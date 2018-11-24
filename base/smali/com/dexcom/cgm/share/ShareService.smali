.class public interface abstract Lcom/dexcom/cgm/share/ShareService;
.super Ljava/lang/Object;
.source "ShareService.java"


# virtual methods
.method public abstract addFollower(Lcom/dexcom/cgm/model/Follower;)V
.end method

.method public abstract doesFollowerExistByName(Ljava/lang/String;)Z
.end method

.method public abstract getInternetStatus()Z
.end method

.method public abstract getPhoneStatus()Z
.end method

.method public abstract getPublisherID()Ljava/util/UUID;
.end method

.method public abstract getServerStatus()Z
.end method

.method public abstract getServerUTCTime()Lcom/dexcom/cgm/k/h;
.end method

.method public abstract isShareEnabled()Z
.end method

.method public abstract isUserLoggedIn()Z
.end method

.method public abstract listFollowers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Follower;",
            ">;"
        }
    .end annotation
.end method

.method public abstract listFollowersFromServer()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Follower;",
            ">;"
        }
    .end annotation
.end method

.method public abstract login(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onApplicationCameToForeground()V
.end method

.method public abstract onTestReset()V
.end method

.method public abstract onTransmitterCommunicationEvent()V
.end method

.method public abstract pauseFollower(Ljava/util/UUID;)V
.end method

.method public abstract readFAQItems(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/share/ShareService$FaqItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract registerTransmitterID(Lcom/dexcom/cgm/model/TransmitterId;)V
.end method

.method public abstract removeFollower(Ljava/util/UUID;)V
.end method

.method public abstract resumeFollower(Ljava/util/UUID;)V
.end method

.method public abstract saveAlertSchedule()V
.end method

.method public abstract saveAlertSettings(Z)V
.end method

.method public abstract saveGraphHeightSetting()V
.end method

.method public abstract saveUserAvatar([B)V
.end method

.method public abstract saveUserDisplayName(Ljava/lang/String;)V
.end method

.method public abstract saveUserEmailAddress(Ljava/lang/String;)V
.end method

.method public abstract setSharingEnabled(Z)V
.end method

.method public abstract updateFollowerName(Ljava/util/UUID;Ljava/lang/String;)V
.end method

.method public abstract updateFollowerTrendGraphPermission(Ljava/util/UUID;Z)V
.end method

.method public abstract updateRuntimeInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
