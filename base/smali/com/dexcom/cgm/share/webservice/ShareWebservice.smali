.class public interface abstract Lcom/dexcom/cgm/share/webservice/ShareWebservice;
.super Ljava/lang/Object;
.source "ShareWebservice.java"


# virtual methods
.method public abstract AuthenticatePublisherAccount(Ljava/lang/String;Ljava/lang/String;)Ljava/util/UUID;
.end method

.method public abstract ChangePublisherAccountPassword(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract CheckMonitoredReceiverAssignmentStatus(Lcom/dexcom/cgm/model/TransmitterId;)Lcom/dexcom/cgm/share/webservice/jsonobjects/ReceiverAssignmentStatus;
.end method

.method public abstract CreateContact(Ljava/lang/String;Ljava/lang/String;)Ljava/util/UUID;
.end method

.method public abstract CreateNamedValue(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract CreateSubscriptionInvitation(Ljava/util/UUID;Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerInvitationBody;)Ljava/util/UUID;
.end method

.method public abstract DeleteAllNamedValues()V
.end method

.method public abstract DeleteContact(Ljava/util/UUID;)V
.end method

.method public abstract DoesContactExistByName(Ljava/lang/String;)Z
.end method

.method public abstract IsRemoteMonitoringSessionActive()Z
.end method

.method public abstract ListPublisherAccountSubscriptions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/share/webservice/jsonobjects/ListFollowersFollower;",
            ">;"
        }
    .end annotation
.end method

.method public abstract ListValueNames()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract LoginPublisherAccountByName(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract LogoutPublisherAccount()V
.end method

.method public abstract PauseSubscription(Ljava/util/UUID;)V
.end method

.method public abstract PostReceiverEgvRecords(Lcom/dexcom/cgm/model/TransmitterId;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/model/TransmitterId;",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Glucose;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract ReadContact(Ljava/util/UUID;)Lcom/dexcom/cgm/share/webservice/jsonobjects/ContactInfo;
.end method

.method public abstract ReadNamedValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract ReadPublisherAccountDisplayName()Ljava/lang/String;
.end method

.method public abstract ReadPublisherAccountEmail()Ljava/lang/String;
.end method

.method public abstract ReadPublisherAccountImage()[B
.end method

.method public abstract ReadPublisherLatestGlucoseValues(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV;",
            ">;"
        }
    .end annotation
.end method

.method public abstract ReadSubscriptionAlerts(Ljava/util/UUID;)Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSettings;
.end method

.method public abstract ReadSubscriptionInviteId(Ljava/util/UUID;)Ljava/util/UUID;
.end method

.method public abstract ReplacePublisherAccountMonitoredReceiver(Lcom/dexcom/cgm/model/TransmitterId;)V
.end method

.method public abstract ResumeSubscription(Ljava/util/UUID;)V
.end method

.method public abstract StartRemoteMonitoringSession(Lcom/dexcom/cgm/model/TransmitterId;)V
.end method

.method public abstract StopMonitoringReceiver()V
.end method

.method public abstract StopRemoteMonitoringSession()V
.end method

.method public abstract SystemUtcTime()Lcom/dexcom/cgm/share/webservice/jsonobjects/DateTimeType;
.end method

.method public abstract UpdateContactName(Ljava/util/UUID;Ljava/lang/String;)V
.end method

.method public abstract UpdateNamedValue(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract UpdatePublisherAccountDisplayName(Ljava/lang/String;)V
.end method

.method public abstract UpdatePublisherAccountEmail(Ljava/lang/String;)V
.end method

.method public abstract UpdatePublisherAccountImage([B)V
.end method

.method public abstract UpdateSubscriptionPermissions(Ljava/util/UUID;Z)V
.end method

.method public abstract isSessionActive()Z
.end method

.method public abstract lastKnownInternetState()Z
.end method

.method public abstract lastKnownServerState()Z
.end method

.method public abstract setUsernameAndPassword(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateRuntimeInfo(Lcom/dexcom/cgm/share/webservice/jsonobjects/RuntimeInfo;)V
.end method
