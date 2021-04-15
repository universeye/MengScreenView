//
//  Constant.swift
//  MengLogInScreen
//
//  Created by Terry Kuo on 2021/4/15.
//

import SwiftUI

struct Constant {
    static var backgroundGradient = LinearGradient(
        gradient:
            Gradient(
                stops: [
                    .init(color: Color(#colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)), location: 0),
                    .init(color: Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)), location: 1)]),
        startPoint: UnitPoint(x: 0.5, y: -3.061671314629196e-17),
        endPoint: UnitPoint(x: 0.5, y: 0.999999999999))
    
    static var onBoardGradient = LinearGradient(
        gradient: Gradient(stops: [
                            .init(color: Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)), location: 0),
                            .init(color:Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0)), location: 1)]),
        startPoint: UnitPoint(x:
                                0.49999988837676157, y:
                                    2.9497591284275417e-15),
        endPoint: UnitPoint(x:
                                0.4999999443689973, y:
                                    0.9363635917143408))
    
    
    static var onBoardBackGround = LinearGradient(
        gradient: Gradient(stops: [
                            .init(color:Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)), location: 0),
                            .init(color:Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)), location:1)]),
        startPoint: UnitPoint(x:
                                0.5000000291053439,y:
                                    1.0838161507153998e-8),
        endPoint: UnitPoint(x:
                                -0.002089660354856915, y:
                                    0.976613295904758))
    
    
    static var textGradient = LinearGradient(
        gradient: Gradient(stops: [
                            .init(color: Color(#colorLiteral(red: 0.1343588233, green: 0.4169379473, blue: 1, alpha: 1)),location: 0),
                            .init(color: Color(#colorLiteral(red: 0.6890257001, green: 0.4498076439, blue: 0.9597846866, alpha: 1)) ,location:0.5629924535751343),
                            .init(color:Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)),location:1)]),
        startPoint: UnitPoint(x:
                                1.0125392039427847, y:
                                    1.0175438863216821),
        endPoint: UnitPoint(x:
                                -1.1102230246251565e-16,y:0))
    
    static var strokeGradient = LinearGradient(gradient: Gradient(stops: [
                                                                    .init(color: Color(#colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)), location: 0),
                                                                    .init(color:Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0)), location: 1)]), startPoint: UnitPoint(x: 0.49999988837676157, y:2.9497591284275417e-15),
                                               endPoint: UnitPoint(x:
                                                                    0.4999999443689973, y:
                                                                        0.9363635917143408))
    
}
