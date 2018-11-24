.class public final enum Lcom/dexcom/cgm/appcompatability/webservice/i;
.super Ljava/lang/Enum;
.source "DexcomWebserviceExceptionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/appcompatability/webservice/i;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/appcompatability/webservice/i;

.field public static final enum AccountPasswordInvalid:Lcom/dexcom/cgm/appcompatability/webservice/i;

.field public static final enum ContactAlreadyDeleted:Lcom/dexcom/cgm/appcompatability/webservice/i;

.field public static final enum DuplicateEgvPosted:Lcom/dexcom/cgm/appcompatability/webservice/i;

.field public static final enum FutureEgvPosted:Lcom/dexcom/cgm/appcompatability/webservice/i;

.field public static final enum InvalidEmailAddress:Lcom/dexcom/cgm/appcompatability/webservice/i;

.field public static final enum MonitoredReceiverNotAssigned:Lcom/dexcom/cgm/appcompatability/webservice/i;

.field public static final enum MonitoredReceiverSerialNumberDoesNotMatch:Lcom/dexcom/cgm/appcompatability/webservice/i;

.field public static final enum MonitoringSessionNotActive:Lcom/dexcom/cgm/appcompatability/webservice/i;

.field public static final enum NamedValueCreateFailed:Lcom/dexcom/cgm/appcompatability/webservice/i;

.field public static final enum NamedValueDeleteFailed:Lcom/dexcom/cgm/appcompatability/webservice/i;

.field public static final enum NamedValueReadFailed:Lcom/dexcom/cgm/appcompatability/webservice/i;

.field public static final enum NamedValueUpdateFailed:Lcom/dexcom/cgm/appcompatability/webservice/i;

.field public static final enum SSO_AuthenticateAccountNotFound:Lcom/dexcom/cgm/appcompatability/webservice/i;

.field public static final enum SSO_AuthenticateMaxAttemptsExceeed:Lcom/dexcom/cgm/appcompatability/webservice/i;

.field public static final enum SSO_AuthenticatePasswordInvalid:Lcom/dexcom/cgm/appcompatability/webservice/i;

.field public static final enum SSO_EmailNonStandard:Lcom/dexcom/cgm/appcompatability/webservice/i;

.field public static final enum SSO_EmailUnknownFault:Lcom/dexcom/cgm/appcompatability/webservice/i;

.field public static final enum SerialNumberAssignedToSomeoneElse:Lcom/dexcom/cgm/appcompatability/webservice/i;

.field public static final enum SerialNumberAssignedToYou:Lcom/dexcom/cgm/appcompatability/webservice/i;

.field public static final enum ServerUnreachable:Lcom/dexcom/cgm/appcompatability/webservice/i;

.field public static final enum ServiceUnavailable:Lcom/dexcom/cgm/appcompatability/webservice/i;

.field public static final enum SessionIdNotFound:Lcom/dexcom/cgm/appcompatability/webservice/i;

.field public static final enum SessionNotValid:Lcom/dexcom/cgm/appcompatability/webservice/i;

.field public static final enum SubscriptionNotPausableState:Lcom/dexcom/cgm/appcompatability/webservice/i;

.field public static final enum SubscriptionNotPaused:Lcom/dexcom/cgm/appcompatability/webservice/i;

.field public static final enum UnknownException:Lcom/dexcom/cgm/appcompatability/webservice/i;


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
    new-instance v0, Lcom/dexcom/cgm/appcompatability/webservice/i;

    const-string v1, "ServerUnreachable"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/appcompatability/webservice/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/appcompatability/webservice/i;->ServerUnreachable:Lcom/dexcom/cgm/appcompatability/webservice/i;

    .line 17
    new-instance v0, Lcom/dexcom/cgm/appcompatability/webservice/i;

    const-string v1, "ServiceUnavailable"

    invoke-direct {v0, v1, v4}, Lcom/dexcom/cgm/appcompatability/webservice/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/appcompatability/webservice/i;->ServiceUnavailable:Lcom/dexcom/cgm/appcompatability/webservice/i;

    .line 18
    new-instance v0, Lcom/dexcom/cgm/appcompatability/webservice/i;

    const-string v1, "UnknownException"

    invoke-direct {v0, v1, v5}, Lcom/dexcom/cgm/appcompatability/webservice/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/appcompatability/webservice/i;->UnknownException:Lcom/dexcom/cgm/appcompatability/webservice/i;

    .line 19
    new-instance v0, Lcom/dexcom/cgm/appcompatability/webservice/i;

    const-string v1, "SubscriptionNotPausableState"

    invoke-direct {v0, v1, v6}, Lcom/dexcom/cgm/appcompatability/webservice/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/appcompatability/webservice/i;->SubscriptionNotPausableState:Lcom/dexcom/cgm/appcompatability/webservice/i;

    .line 20
    new-instance v0, Lcom/dexcom/cgm/appcompatability/webservice/i;

    const-string v1, "SubscriptionNotPaused"

    invoke-direct {v0, v1, v7}, Lcom/dexcom/cgm/appcompatability/webservice/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/appcompatability/webservice/i;->SubscriptionNotPaused:Lcom/dexcom/cgm/appcompatability/webservice/i;

    .line 21
    new-instance v0, Lcom/dexcom/cgm/appcompatability/webservice/i;

    const-string v1, "SessionNotValid"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/appcompatability/webservice/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/appcompatability/webservice/i;->SessionNotValid:Lcom/dexcom/cgm/appcompatability/webservice/i;

    .line 22
    new-instance v0, Lcom/dexcom/cgm/appcompatability/webservice/i;

    const-string v1, "SessionIdNotFound"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/appcompatability/webservice/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/appcompatability/webservice/i;->SessionIdNotFound:Lcom/dexcom/cgm/appcompatability/webservice/i;

    .line 23
    new-instance v0, Lcom/dexcom/cgm/appcompatability/webservice/i;

    const-string v1, "SerialNumberAssignedToSomeoneElse"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/appcompatability/webservice/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/appcompatability/webservice/i;->SerialNumberAssignedToSomeoneElse:Lcom/dexcom/cgm/appcompatability/webservice/i;

    .line 24
    new-instance v0, Lcom/dexcom/cgm/appcompatability/webservice/i;

    const-string v1, "SerialNumberAssignedToYou"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/appcompatability/webservice/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/appcompatability/webservice/i;->SerialNumberAssignedToYou:Lcom/dexcom/cgm/appcompatability/webservice/i;

    .line 25
    new-instance v0, Lcom/dexcom/cgm/appcompatability/webservice/i;

    const-string v1, "InvalidEmailAddress"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/appcompatability/webservice/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/appcompatability/webservice/i;->InvalidEmailAddress:Lcom/dexcom/cgm/appcompatability/webservice/i;

    .line 26
    new-instance v0, Lcom/dexcom/cgm/appcompatability/webservice/i;

    const-string v1, "SSO_EmailNonStandard"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/appcompatability/webservice/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/appcompatability/webservice/i;->SSO_EmailNonStandard:Lcom/dexcom/cgm/appcompatability/webservice/i;

    .line 27
    new-instance v0, Lcom/dexcom/cgm/appcompatability/webservice/i;

    const-string v1, "SSO_EmailUnknownFault"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/appcompatability/webservice/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/appcompatability/webservice/i;->SSO_EmailUnknownFault:Lcom/dexcom/cgm/appcompatability/webservice/i;

    .line 28
    new-instance v0, Lcom/dexcom/cgm/appcompatability/webservice/i;

    const-string v1, "ContactAlreadyDeleted"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/appcompatability/webservice/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/appcompatability/webservice/i;->ContactAlreadyDeleted:Lcom/dexcom/cgm/appcompatability/webservice/i;

    .line 29
    new-instance v0, Lcom/dexcom/cgm/appcompatability/webservice/i;

    const-string v1, "NamedValueCreateFailed"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/appcompatability/webservice/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/appcompatability/webservice/i;->NamedValueCreateFailed:Lcom/dexcom/cgm/appcompatability/webservice/i;

    .line 30
    new-instance v0, Lcom/dexcom/cgm/appcompatability/webservice/i;

    const-string v1, "NamedValueReadFailed"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/appcompatability/webservice/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/appcompatability/webservice/i;->NamedValueReadFailed:Lcom/dexcom/cgm/appcompatability/webservice/i;

    .line 31
    new-instance v0, Lcom/dexcom/cgm/appcompatability/webservice/i;

    const-string v1, "NamedValueUpdateFailed"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/appcompatability/webservice/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/appcompatability/webservice/i;->NamedValueUpdateFailed:Lcom/dexcom/cgm/appcompatability/webservice/i;

    .line 32
    new-instance v0, Lcom/dexcom/cgm/appcompatability/webservice/i;

    const-string v1, "NamedValueDeleteFailed"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/appcompatability/webservice/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/appcompatability/webservice/i;->NamedValueDeleteFailed:Lcom/dexcom/cgm/appcompatability/webservice/i;

    .line 33
    new-instance v0, Lcom/dexcom/cgm/appcompatability/webservice/i;

    const-string v1, "MonitoredReceiverNotAssigned"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/appcompatability/webservice/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/appcompatability/webservice/i;->MonitoredReceiverNotAssigned:Lcom/dexcom/cgm/appcompatability/webservice/i;

    .line 34
    new-instance v0, Lcom/dexcom/cgm/appcompatability/webservice/i;

    const-string v1, "MonitoredReceiverSerialNumberDoesNotMatch"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/appcompatability/webservice/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/appcompatability/webservice/i;->MonitoredReceiverSerialNumberDoesNotMatch:Lcom/dexcom/cgm/appcompatability/webservice/i;

    .line 35
    new-instance v0, Lcom/dexcom/cgm/appcompatability/webservice/i;

    const-string v1, "MonitoringSessionNotActive"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/appcompatability/webservice/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/appcompatability/webservice/i;->MonitoringSessionNotActive:Lcom/dexcom/cgm/appcompatability/webservice/i;

    .line 36
    new-instance v0, Lcom/dexcom/cgm/appcompatability/webservice/i;

    const-string v1, "FutureEgvPosted"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/appcompatability/webservice/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/appcompatability/webservice/i;->FutureEgvPosted:Lcom/dexcom/cgm/appcompatability/webservice/i;

    .line 37
    new-instance v0, Lcom/dexcom/cgm/appcompatability/webservice/i;

    const-string v1, "DuplicateEgvPosted"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/appcompatability/webservice/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/appcompatability/webservice/i;->DuplicateEgvPosted:Lcom/dexcom/cgm/appcompatability/webservice/i;

    .line 44
    new-instance v0, Lcom/dexcom/cgm/appcompatability/webservice/i;

    const-string v1, "SSO_AuthenticateMaxAttemptsExceeed"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/appcompatability/webservice/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/appcompatability/webservice/i;->SSO_AuthenticateMaxAttemptsExceeed:Lcom/dexcom/cgm/appcompatability/webservice/i;

    .line 45
    new-instance v0, Lcom/dexcom/cgm/appcompatability/webservice/i;

    const-string v1, "AccountPasswordInvalid"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/appcompatability/webservice/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/appcompatability/webservice/i;->AccountPasswordInvalid:Lcom/dexcom/cgm/appcompatability/webservice/i;

    .line 46
    new-instance v0, Lcom/dexcom/cgm/appcompatability/webservice/i;

    const-string v1, "SSO_AuthenticatePasswordInvalid"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/appcompatability/webservice/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/appcompatability/webservice/i;->SSO_AuthenticatePasswordInvalid:Lcom/dexcom/cgm/appcompatability/webservice/i;

    .line 47
    new-instance v0, Lcom/dexcom/cgm/appcompatability/webservice/i;

    const-string v1, "SSO_AuthenticateAccountNotFound"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/appcompatability/webservice/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/appcompatability/webservice/i;->SSO_AuthenticateAccountNotFound:Lcom/dexcom/cgm/appcompatability/webservice/i;

    .line 14
    const/16 v0, 0x1a

    new-array v0, v0, [Lcom/dexcom/cgm/appcompatability/webservice/i;

    sget-object v1, Lcom/dexcom/cgm/appcompatability/webservice/i;->ServerUnreachable:Lcom/dexcom/cgm/appcompatability/webservice/i;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/appcompatability/webservice/i;->ServiceUnavailable:Lcom/dexcom/cgm/appcompatability/webservice/i;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/appcompatability/webservice/i;->UnknownException:Lcom/dexcom/cgm/appcompatability/webservice/i;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dexcom/cgm/appcompatability/webservice/i;->SubscriptionNotPausableState:Lcom/dexcom/cgm/appcompatability/webservice/i;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dexcom/cgm/appcompatability/webservice/i;->SubscriptionNotPaused:Lcom/dexcom/cgm/appcompatability/webservice/i;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dexcom/cgm/appcompatability/webservice/i;->SessionNotValid:Lcom/dexcom/cgm/appcompatability/webservice/i;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dexcom/cgm/appcompatability/webservice/i;->SessionIdNotFound:Lcom/dexcom/cgm/appcompatability/webservice/i;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dexcom/cgm/appcompatability/webservice/i;->SerialNumberAssignedToSomeoneElse:Lcom/dexcom/cgm/appcompatability/webservice/i;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dexcom/cgm/appcompatability/webservice/i;->SerialNumberAssignedToYou:Lcom/dexcom/cgm/appcompatability/webservice/i;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/dexcom/cgm/appcompatability/webservice/i;->InvalidEmailAddress:Lcom/dexcom/cgm/appcompatability/webservice/i;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/dexcom/cgm/appcompatability/webservice/i;->SSO_EmailNonStandard:Lcom/dexcom/cgm/appcompatability/webservice/i;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/dexcom/cgm/appcompatability/webservice/i;->SSO_EmailUnknownFault:Lcom/dexcom/cgm/appcompatability/webservice/i;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/dexcom/cgm/appcompatability/webservice/i;->ContactAlreadyDeleted:Lcom/dexcom/cgm/appcompatability/webservice/i;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/dexcom/cgm/appcompatability/webservice/i;->NamedValueCreateFailed:Lcom/dexcom/cgm/appcompatability/webservice/i;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/dexcom/cgm/appcompatability/webservice/i;->NamedValueReadFailed:Lcom/dexcom/cgm/appcompatability/webservice/i;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/dexcom/cgm/appcompatability/webservice/i;->NamedValueUpdateFailed:Lcom/dexcom/cgm/appcompatability/webservice/i;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/dexcom/cgm/appcompatability/webservice/i;->NamedValueDeleteFailed:Lcom/dexcom/cgm/appcompatability/webservice/i;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/dexcom/cgm/appcompatability/webservice/i;->MonitoredReceiverNotAssigned:Lcom/dexcom/cgm/appcompatability/webservice/i;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/dexcom/cgm/appcompatability/webservice/i;->MonitoredReceiverSerialNumberDoesNotMatch:Lcom/dexcom/cgm/appcompatability/webservice/i;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/dexcom/cgm/appcompatability/webservice/i;->MonitoringSessionNotActive:Lcom/dexcom/cgm/appcompatability/webservice/i;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/dexcom/cgm/appcompatability/webservice/i;->FutureEgvPosted:Lcom/dexcom/cgm/appcompatability/webservice/i;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/dexcom/cgm/appcompatability/webservice/i;->DuplicateEgvPosted:Lcom/dexcom/cgm/appcompatability/webservice/i;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/dexcom/cgm/appcompatability/webservice/i;->SSO_AuthenticateMaxAttemptsExceeed:Lcom/dexcom/cgm/appcompatability/webservice/i;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/dexcom/cgm/appcompatability/webservice/i;->AccountPasswordInvalid:Lcom/dexcom/cgm/appcompatability/webservice/i;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/dexcom/cgm/appcompatability/webservice/i;->SSO_AuthenticatePasswordInvalid:Lcom/dexcom/cgm/appcompatability/webservice/i;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/dexcom/cgm/appcompatability/webservice/i;->SSO_AuthenticateAccountNotFound:Lcom/dexcom/cgm/appcompatability/webservice/i;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dexcom/cgm/appcompatability/webservice/i;->$VALUES:[Lcom/dexcom/cgm/appcompatability/webservice/i;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/appcompatability/webservice/i;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/dexcom/cgm/appcompatability/webservice/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/appcompatability/webservice/i;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/appcompatability/webservice/i;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/dexcom/cgm/appcompatability/webservice/i;->$VALUES:[Lcom/dexcom/cgm/appcompatability/webservice/i;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/appcompatability/webservice/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/appcompatability/webservice/i;

    return-object v0
.end method
