import { Injectable } from "@nestjs/common";

@Injectable({})
export class AuthService {
    
    signup() {
        return {msg: 'eu estou logando'};
    }

    signin() {
        return {msg: 'i estou logado'}
    }
}
