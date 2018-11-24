.class public interface abstract Lcom/dexcom/cgm/share/webservice/ShareWebserviceAPI;
.super Ljava/lang/Object;
.source "ShareWebserviceAPI.java"


# virtual methods
.method public abstract AuthenticatePublisherAccount(Lcom/dexcom/cgm/share/webservice/jsonobjects/LoginBody;)Ljava/util/UUID;
    .param p1    # Lcom/dexcom/cgm/share/webservice/jsonobjects/LoginBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/General/AuthenticatePublisherAccount"
    .end annotation
.end method

.method public abstract ChangePublisherAccountPassword(Lcom/dexcom/cgm/share/webservice/jsonobjects/ChangePasswordBody;)Ljava/lang/Void;
    .param p1    # Lcom/dexcom/cgm/share/webservice/jsonobjects/ChangePasswordBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/Publisher/ChangePublisherAccountPassword"
    .end annotation
.end method

.method public abstract CheckMonitoredReceiverAssignmentStatus(Ljava/util/UUID;Ljava/lang/String;Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;)Ljava/lang/String;
    .param p1    # Ljava/util/UUID;
        .annotation runtime Lretrofit/http/Query;
            value = "sessionId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "serialNumber"
        .end annotation
    .end param
    .param p3    # Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/Publisher/CheckMonitoredReceiverAssignmentStatus"
    .end annotation
.end method

.method public abstract CreateContact(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;)Ljava/util/UUID;
    .param p1    # Ljava/util/UUID;
        .annotation runtime Lretrofit/http/Query;
            value = "sessionId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "contactName"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "emailAddress"
        .end annotation
    .end param
    .param p4    # Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/Publisher/CreateContact"
    .end annotation
.end method

.method public abstract CreateNamedValue(Lcom/dexcom/cgm/share/webservice/jsonobjects/NamedValueBody;)Ljava/lang/Void;
    .param p1    # Lcom/dexcom/cgm/share/webservice/jsonobjects/NamedValueBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/General/CreateNamedValue"
    .end annotation
.end method

.method public abstract CreateSubscriptionInvitation(Ljava/util/UUID;Ljava/util/UUID;Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerInvitationBody;)Ljava/util/UUID;
    .param p1    # Ljava/util/UUID;
        .annotation runtime Lretrofit/http/Query;
            value = "sessionId"
        .end annotation
    .end param
    .param p2    # Ljava/util/UUID;
        .annotation runtime Lretrofit/http/Query;
            value = "contactId"
        .end annotation
    .end param
    .param p3    # Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerInvitationBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/Publisher/CreateSubscriptionInvitation"
    .end annotation
.end method

.method public abstract DeleteAllNamedValues(Ljava/util/UUID;Ljava/util/UUID;Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;)I
    .param p1    # Ljava/util/UUID;
        .annotation runtime Lretrofit/http/Query;
            value = "sessionId"
        .end annotation
    .end param
    .param p2    # Ljava/util/UUID;
        .annotation runtime Lretrofit/http/Query;
            value = "partitionId"
        .end annotation
    .end param
    .param p3    # Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/General/DeleteAllNamedValues"
    .end annotation
.end method

.method public abstract DeleteContact(Ljava/util/UUID;Ljava/lang/String;Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;)Ljava/lang/Void;
    .param p1    # Ljava/util/UUID;
        .annotation runtime Lretrofit/http/Query;
            value = "sessionId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "contactId"
        .end annotation
    .end param
    .param p3    # Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/Publisher/DeleteContact"
    .end annotation
.end method

.method public abstract DoesContactExistByName(Ljava/util/UUID;Ljava/lang/String;Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;)Z
    .param p1    # Ljava/util/UUID;
        .annotation runtime Lretrofit/http/Query;
            value = "sessionId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "contactName"
        .end annotation
    .end param
    .param p3    # Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/Publisher/DoesContactExistByName"
    .end annotation
.end method

.method public abstract GetMonitoredReceiverIdIfEnabled(Ljava/util/UUID;Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;)Ljava/util/UUID;
    .param p1    # Ljava/util/UUID;
        .annotation runtime Lretrofit/http/Query;
            value = "sessionId"
        .end annotation
    .end param
    .param p2    # Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/Publisher/GetMonitoredReceiverIdIfEnabled"
    .end annotation
.end method

.method public abstract IsRemoteMonitoringSessionActive(Ljava/util/UUID;Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;)Z
    .param p1    # Ljava/util/UUID;
        .annotation runtime Lretrofit/http/Query;
            value = "sessionId"
        .end annotation
    .end param
    .param p2    # Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/Publisher/IsRemoteMonitoringSessionActive"
    .end annotation
.end method

.method public abstract ListPublisherAccountSubscriptions(Ljava/util/UUID;Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;)Ljava/util/List;
    .param p1    # Ljava/util/UUID;
        .annotation runtime Lretrofit/http/Query;
            value = "sessionId"
        .end annotation
    .end param
    .param p2    # Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/share/webservice/jsonobjects/ListFollowersFollower;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/Publisher/ListPublisherAccountSubscriptions"
    .end annotation
.end method

.method public abstract ListValueNames(Ljava/util/UUID;Ljava/util/UUID;)Ljava/util/List;
    .param p1    # Ljava/util/UUID;
        .annotation runtime Lretrofit/http/Query;
            value = "sessionId"
        .end annotation
    .end param
    .param p2    # Ljava/util/UUID;
        .annotation runtime Lretrofit/http/Query;
            value = "partitionId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/General/ListValueNames"
    .end annotation
.end method

.method public abstract LoginPublisherAccountByName(Lcom/dexcom/cgm/share/webservice/jsonobjects/LoginBody;)Ljava/util/UUID;
    .param p1    # Lcom/dexcom/cgm/share/webservice/jsonobjects/LoginBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/General/LoginPublisherAccountByName"
    .end annotation
.end method

.method public abstract LogoutPublisherAccount(Ljava/util/UUID;Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;)Ljava/lang/Void;
    .param p1    # Ljava/util/UUID;
        .annotation runtime Lretrofit/http/Query;
            value = "sessionId"
        .end annotation
    .end param
    .param p2    # Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/Publisher/LogoutPublisherAccount"
    .end annotation
.end method

.method public abstract PauseSubscription(Ljava/util/UUID;Ljava/util/UUID;Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;)Ljava/lang/Void;
    .param p1    # Ljava/util/UUID;
        .annotation runtime Lretrofit/http/Query;
            value = "sessionId"
        .end annotation
    .end param
    .param p2    # Ljava/util/UUID;
        .annotation runtime Lretrofit/http/Query;
            value = "subscriptionId"
        .end annotation
    .end param
    .param p3    # Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/General/PauseSubscription"
    .end annotation
.end method

.method public abstract PostReceiverEgvRecords(Ljava/util/UUID;Lcom/dexcom/cgm/share/webservice/jsonobjects/PostEGVRecordsBody;)Ljava/lang/Void;
    .param p1    # Ljava/util/UUID;
        .annotation runtime Lretrofit/http/Query;
            value = "sessionId"
        .end annotation
    .end param
    .param p2    # Lcom/dexcom/cgm/share/webservice/jsonobjects/PostEGVRecordsBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/Publisher/PostReceiverEgvRecords"
    .end annotation
.end method

.method public abstract ReadContact(Ljava/util/UUID;Ljava/util/UUID;Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;)Lcom/dexcom/cgm/share/webservice/jsonobjects/ContactInfo;
    .param p1    # Ljava/util/UUID;
        .annotation runtime Lretrofit/http/Query;
            value = "sessionId"
        .end annotation
    .end param
    .param p2    # Ljava/util/UUID;
        .annotation runtime Lretrofit/http/Query;
            value = "contactId"
        .end annotation
    .end param
    .param p3    # Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/Publisher/ReadContact"
    .end annotation
.end method

.method public abstract ReadNamedValue(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;)Ljava/lang/String;
    .param p1    # Ljava/util/UUID;
        .annotation runtime Lretrofit/http/Query;
            value = "sessionId"
        .end annotation
    .end param
    .param p2    # Ljava/util/UUID;
        .annotation runtime Lretrofit/http/Query;
            value = "partitionId"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "name"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/General/ReadNamedValue"
    .end annotation
.end method

.method public abstract ReadPublisherAccountDisplayName(Ljava/util/UUID;Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;)Ljava/lang/String;
    .param p1    # Ljava/util/UUID;
        .annotation runtime Lretrofit/http/Query;
            value = "sessionId"
        .end annotation
    .end param
    .param p2    # Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/Publisher/ReadPublisherAccountDisplayName"
    .end annotation
.end method

.method public abstract ReadPublisherAccountEmail(Ljava/util/UUID;Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;)Ljava/lang/String;
    .param p1    # Ljava/util/UUID;
        .annotation runtime Lretrofit/http/Query;
            value = "sessionId"
        .end annotation
    .end param
    .param p2    # Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/Publisher/ReadPublisherAccountEmail"
    .end annotation
.end method

.method public abstract ReadPublisherAccountImage(Ljava/util/UUID;)Lretrofit/client/Response;
    .param p1    # Ljava/util/UUID;
        .annotation runtime Lretrofit/http/Query;
            value = "sessionId"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/Publisher/ReadPublisherAccountImage"
    .end annotation
.end method

.method public abstract ReadPublisherLatestGlucoseValues(Ljava/util/UUID;IILcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;)Ljava/util/List;
    .param p1    # Ljava/util/UUID;
        .annotation runtime Lretrofit/http/Query;
            value = "sessionId"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit/http/Query;
            value = "minutes"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit/http/Query;
            value = "maxCount"
        .end annotation
    .end param
    .param p4    # Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "II",
            "Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/Publisher/ReadPublisherLatestGlucoseValues"
    .end annotation
.end method

.method public abstract ReadSubscriptionAlerts(Ljava/util/UUID;Ljava/util/UUID;Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;)Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSettings;
    .param p1    # Ljava/util/UUID;
        .annotation runtime Lretrofit/http/Query;
            value = "sessionId"
        .end annotation
    .end param
    .param p2    # Ljava/util/UUID;
        .annotation runtime Lretrofit/http/Query;
            value = "subscriptionId"
        .end annotation
    .end param
    .param p3    # Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/General/ReadSubscriptionAlerts"
    .end annotation
.end method

.method public abstract ReadSubscriptionInviteId(Ljava/util/UUID;Ljava/util/UUID;Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;)Ljava/util/UUID;
    .param p1    # Ljava/util/UUID;
        .annotation runtime Lretrofit/http/Query;
            value = "sessionId"
        .end annotation
    .end param
    .param p2    # Ljava/util/UUID;
        .annotation runtime Lretrofit/http/Query;
            value = "subscriptionId"
        .end annotation
    .end param
    .param p3    # Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/Publisher/ReadSubscriptionInviteId"
    .end annotation
.end method

.method public abstract ReplacePublisherAccountMonitoredReceiver(Ljava/util/UUID;Ljava/lang/String;Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;)Ljava/util/UUID;
    .param p1    # Ljava/util/UUID;
        .annotation runtime Lretrofit/http/Query;
            value = "sessionId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "serialNumber"
        .end annotation
    .end param
    .param p3    # Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/Publisher/ReplacePublisherAccountMonitoredReceiver"
    .end annotation
.end method

.method public abstract ResumeSubscription(Ljava/util/UUID;Ljava/util/UUID;Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;)Ljava/lang/Void;
    .param p1    # Ljava/util/UUID;
        .annotation runtime Lretrofit/http/Query;
            value = "sessionId"
        .end annotation
    .end param
    .param p2    # Ljava/util/UUID;
        .annotation runtime Lretrofit/http/Query;
            value = "subscriptionId"
        .end annotation
    .end param
    .param p3    # Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/General/ResumeSubscription"
    .end annotation
.end method

.method public abstract StartRemoteMonitoringSession(Ljava/util/UUID;Ljava/lang/String;Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;)Ljava/lang/Void;
    .param p1    # Ljava/util/UUID;
        .annotation runtime Lretrofit/http/Query;
            value = "sessionId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "serialNumber"
        .end annotation
    .end param
    .param p3    # Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/Publisher/StartRemoteMonitoringSession"
    .end annotation
.end method

.method public abstract StopMonitoringReceiver(Ljava/util/UUID;Ljava/lang/String;Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;)Ljava/lang/Void;
    .param p1    # Ljava/util/UUID;
        .annotation runtime Lretrofit/http/Query;
            value = "sessionId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "monitoredReceiverId"
        .end annotation
    .end param
    .param p3    # Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/Publisher/StopMonitoringReceiver"
    .end annotation
.end method

.method public abstract StopRemoteMonitoringSession(Ljava/util/UUID;Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;)Ljava/lang/Void;
    .param p1    # Ljava/util/UUID;
        .annotation runtime Lretrofit/http/Query;
            value = "sessionId"
        .end annotation
    .end param
    .param p2    # Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/Publisher/StopRemoteMonitoringSession"
    .end annotation
.end method

.method public abstract SystemUtcTime()Lcom/dexcom/cgm/share/webservice/jsonobjects/DateTimeType;
    .annotation runtime Lretrofit/http/GET;
        value = "/General/SystemUtcTime"
    .end annotation
.end method

.method public abstract UpdateContactName(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;)Ljava/lang/Void;
    .param p1    # Ljava/util/UUID;
        .annotation runtime Lretrofit/http/Query;
            value = "sessionId"
        .end annotation
    .end param
    .param p2    # Ljava/util/UUID;
        .annotation runtime Lretrofit/http/Query;
            value = "contactId"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "contactName"
        .end annotation
    .end param
    .param p4    # Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/Publisher/UpdateContactName"
    .end annotation
.end method

.method public abstract UpdateNamedValue(Lcom/dexcom/cgm/share/webservice/jsonobjects/NamedValueBody;)Ljava/lang/Void;
    .param p1    # Lcom/dexcom/cgm/share/webservice/jsonobjects/NamedValueBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/General/UpdateNamedValue"
    .end annotation
.end method

.method public abstract UpdatePublisherAccountDisplayName(Ljava/util/UUID;Ljava/lang/String;Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;)Ljava/lang/Void;
    .param p1    # Ljava/util/UUID;
        .annotation runtime Lretrofit/http/Query;
            value = "sessionId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "displayName"
        .end annotation
    .end param
    .param p3    # Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/Publisher/UpdatePublisherAccountDisplayName"
    .end annotation
.end method

.method public abstract UpdatePublisherAccountEmail(Ljava/util/UUID;Ljava/lang/String;Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;)Ljava/lang/Void;
    .param p1    # Ljava/util/UUID;
        .annotation runtime Lretrofit/http/Query;
            value = "sessionId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "emailAddress"
        .end annotation
    .end param
    .param p3    # Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/Publisher/UpdatePublisherAccountEmail"
    .end annotation
.end method

.method public abstract UpdatePublisherAccountImage(Ljava/util/UUID;Lcom/dexcom/cgm/share/webservice/jsonobjects/UpdateAvatarBody;)Ljava/lang/Void;
    .param p1    # Ljava/util/UUID;
        .annotation runtime Lretrofit/http/Query;
            value = "sessionId"
        .end annotation
    .end param
    .param p2    # Lcom/dexcom/cgm/share/webservice/jsonobjects/UpdateAvatarBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/Publisher/UpdatePublisherAccountImage"
    .end annotation
.end method

.method public abstract UpdatePublisherAccountRuntimeInfo(Lcom/dexcom/cgm/share/webservice/jsonobjects/RuntimeInfoPayload;)Ljava/lang/Void;
    .param p1    # Lcom/dexcom/cgm/share/webservice/jsonobjects/RuntimeInfoPayload;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/Publisher/UpdatePublisherAccountRuntimeInfo"
    .end annotation
.end method

.method public abstract UpdateSubscriptionPermissions(Ljava/util/UUID;Ljava/util/UUID;ILcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;)Ljava/lang/Void;
    .param p1    # Ljava/util/UUID;
        .annotation runtime Lretrofit/http/Query;
            value = "sessionId"
        .end annotation
    .end param
    .param p2    # Ljava/util/UUID;
        .annotation runtime Lretrofit/http/Query;
            value = "subscriptionId"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit/http/Query;
            value = "permissions"
        .end annotation
    .end param
    .param p4    # Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/Publisher/UpdateSubscriptionPermissions"
    .end annotation
.end method
