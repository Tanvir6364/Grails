package com.bitmascot

class AppInitializationService {

    static initialize() {
        initMember()
    }

    private static initMember() {
        if (Member.count() == 0) {
            Member member = new Member()
            member.firstName = "Bit Mascot"
            member.lastName = "Administrator"
            member.email = "admin@localhost.com"
            member.password = "admin"
            member.memberType = GlobalConfig.USER_TYPE.ADMINISTRATOR
            member.save(flash: true)
        }
    }
}
