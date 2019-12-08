package com.bitmascot

class Member {
    Integer id
    String firstName
    String lastName
    String address
    String phoneNumber
    String email
    //@BindingFormat('MMddyyyy')
    String bdate
    String password
    String memberType = GlobalConfig.USER_TYPE.ADMINISTRATOR
    String identityHash
    Long identityHashLastUpdate
    Boolean isActive = true

    Date dateCreated
    Date lastUpdated

    static constraints = {
        email(email: true, nullable: false, unique: true, blank: false)
        password(blank: false)
        lastName(nullable: true)
        address(nullable: true)
        phoneNumber(nullable: true)
        bdate(nullable: true)
        identityHash(nullable: true)
        identityHashLastUpdate(nullable: true)
    }

    def beforeInsert (){
        this.password = this.password.encodeAsMD5()
    }


    def beforeUpdate(){
        this.password = this.password.encodeAsMD5()
    }

}
