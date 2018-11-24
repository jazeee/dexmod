.class public final enum Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;
.super Ljava/lang/Enum;
.source "DexcomWebserviceExceptionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

.field public static final enum AccountPasswordInvalid:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

.field public static final enum ContactAlreadyDeleted:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

.field public static final enum DuplicateEgvPosted:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

.field public static final enum FutureEgvPosted:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

.field public static final enum InvalidEmailAddress:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

.field public static final enum MonitoredReceiverNotAssigned:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

.field public static final enum MonitoredReceiverSerialNumberDoesNotMatch:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

.field public static final enum MonitoringSessionAlreadyActive:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

.field public static final enum MonitoringSessionNotActive:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

.field public static final enum NamedValueCreateFailed:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

.field public static final enum NamedValueDeleteFailed:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

.field public static final enum NamedValueReadFailed:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

.field public static final enum NamedValueUpdateFailed:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

.field public static final enum SSO_AuthenticateAccountNotFound:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

.field public static final enum SSO_AuthenticateMaxAttemptsExceeed:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

.field public static final enum SSO_AuthenticatePasswordInvalid:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

.field public static final enum SSO_EmailNonStandard:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

.field public static final enum SSO_EmailUnknownFault:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

.field public static final enum SerialNumberAssignedToSomeoneElse:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

.field public static final enum SerialNumberAssignedToYou:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

.field public static final enum ServerUnreachable:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

.field public static final enum ServiceUnavailable:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

.field public static final enum SessionIdNotFound:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

.field public static final enum SessionNotValid:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

.field public static final enum SubscriptionNotPausableState:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

.field public static final enum SubscriptionNotPaused:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

.field public static final enum UnknownException:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    new-instance v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    const-string v1, "ServerUnreachable"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->ServerUnreachable:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    .line 17
    new-instance v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    const-string v1, "ServiceUnavailable"

    invoke-direct {v0, v1, v4}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->ServiceUnavailable:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    .line 18
    new-instance v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    const-string v1, "UnknownException"

    invoke-direct {v0, v1, v5}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->UnknownException:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    .line 19
    new-instance v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    const-string v1, "SubscriptionNotPausableState"

    invoke-direct {v0, v1, v6}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->SubscriptionNotPausableState:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    .line 20
    new-instance v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    const-string v1, "SubscriptionNotPaused"

    invoke-direct {v0, v1, v7}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->SubscriptionNotPaused:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    .line 21
    new-instance v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    const-string v1, "SessionNotValid"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->SessionNotValid:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    .line 22
    new-instance v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    const-string v1, "SessionIdNotFound"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->SessionIdNotFound:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    .line 23
    new-instance v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    const-string v1, "SerialNumberAssignedToSomeoneElse"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->SerialNumberAssignedToSomeoneElse:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    .line 24
    new-instance v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    const-string v1, "SerialNumberAssignedToYou"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->SerialNumberAssignedToYou:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    .line 25
    new-instance v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    const-string v1, "InvalidEmailAddress"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->InvalidEmailAddress:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    .line 26
    new-instance v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    const-string v1, "SSO_EmailNonStandard"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->SSO_EmailNonStandard:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    .line 27
    new-instance v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    const-string v1, "SSO_EmailUnknownFault"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->SSO_EmailUnknownFault:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    .line 28
    new-instance v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    const-string v1, "ContactAlreadyDeleted"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->ContactAlreadyDeleted:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    .line 29
    new-instance v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    const-string v1, "NamedValueCreateFailed"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->NamedValueCreateFailed:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    .line 30
    new-instance v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    const-string v1, "NamedValueReadFailed"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->NamedValueReadFailed:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    .line 31
    new-instance v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    const-string v1, "NamedValueUpdateFailed"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->NamedValueUpdateFailed:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    .line 32
    new-instance v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    const-string v1, "NamedValueDeleteFailed"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->NamedValueDeleteFailed:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    .line 33
    new-instance v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    const-string v1, "MonitoredReceiverNotAssigned"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->MonitoredReceiverNotAssigned:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    .line 34
    new-instance v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    const-string v1, "MonitoredReceiverSerialNumberDoesNotMatch"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->MonitoredReceiverSerialNumberDoesNotMatch:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    .line 35
    new-instance v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    const-string v1, "MonitoringSessionNotActive"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->MonitoringSessionNotActive:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    .line 36
    new-instance v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    const-string v1, "MonitoringSessionAlreadyActive"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->MonitoringSessionAlreadyActive:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    .line 37
    new-instance v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    const-string v1, "FutureEgvPosted"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->FutureEgvPosted:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    .line 38
    new-instance v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    const-string v1, "DuplicateEgvPosted"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->DuplicateEgvPosted:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    .line 45
    new-instance v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    const-string v1, "SSO_AuthenticateMaxAttemptsExceeed"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->SSO_AuthenticateMaxAttemptsExceeed:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    .line 46
    new-instance v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    const-string v1, "AccountPasswordInvalid"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->AccountPasswordInvalid:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    .line 47
    new-instance v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    const-string v1, "SSO_AuthenticatePasswordInvalid"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->SSO_AuthenticatePasswordInvalid:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    .line 48
    new-instance v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    const-string v1, "SSO_AuthenticateAccountNotFound"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->SSO_AuthenticateAccountNotFound:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    .line 14
    const/16 v0, 0x1b

    new-array v0, v0, [Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    sget-object v1, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->ServerUnreachable:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->ServiceUnavailable:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->UnknownException:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->SubscriptionNotPausableState:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->SubscriptionNotPaused:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->SessionNotValid:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->SessionIdNotFound:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->SerialNumberAssignedToSomeoneElse:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->SerialNumberAssignedToYou:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->InvalidEmailAddress:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->SSO_EmailNonStandard:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->SSO_EmailUnknownFault:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->ContactAlreadyDeleted:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->NamedValueCreateFailed:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->NamedValueReadFailed:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->NamedValueUpdateFailed:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->NamedValueDeleteFailed:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->MonitoredReceiverNotAssigned:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->MonitoredReceiverSerialNumberDoesNotMatch:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->MonitoringSessionNotActive:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->MonitoringSessionAlreadyActive:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->FutureEgvPosted:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->DuplicateEgvPosted:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->SSO_AuthenticateMaxAttemptsExceeed:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->AccountPasswordInvalid:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->SSO_AuthenticatePasswordInvalid:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->SSO_AuthenticateAccountNotFound:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->$VALUES:[Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->$VALUES:[Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    return-object v0
.end method
