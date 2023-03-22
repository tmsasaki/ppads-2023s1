import { ForbiddenException, Injectable } from "@nestjs/common";
import { PrismaService } from "src/prisma/prisma.service";
import { AuthDto } from "./dto";
import * as argon from 'argon2';

@Injectable()
export class AuthService {
    constructor(private prisma: PrismaService){}

    async signup(dto: AuthDto) {
        //generate password hash
        const hash = await argon.hash(dto.password);
        //save new user in db
        
        const user = await this.prisma.user.create({
            data:{
                email: dto.email,
                hash,
            },
        })

        delete user.hash;

        // return saved user
        return user;
    }

    async signin(dto: AuthDto) {
        //find user email
        const user = 
            await this.prisma.user.findUnique({
                where: {
                    email: dto.email,
                },
            });
        //if user does not exist throw exeception
        if(!user){
            throw new ForbiddenException('Login Incorreto',);
        }
        //compare password
        const pwMatches = await argon.verify(user.hash, dto.password)
        //if password incorret throw exception
        if(!pwMatches){
            throw new ForbiddenException('Login Incorreto',);
        }
        //return user
        delete user.hash;
        return user;
    }
}
