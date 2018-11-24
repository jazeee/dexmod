.class public final enum Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;
.super Ljava/lang/Enum;
.source "DexcomWebserviceExceptionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

.field public static final enum AccountPasswordInvalid:Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

.field public static final enum DuplicatePostSequence:Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

.field public static final enum IntegrityCheckFailed:Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

.field public static final enum SSO_AuthenticateMaxAttemptsExceeed:Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

.field public static final enum SSO_AuthenticatePasswordInvalid:Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

.field public static final enum SessionIdNotFound:Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

.field public static final enum SessionNotValid:Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

.field public static final enum UnknownException:Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;


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
    new-instance v0, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    const-string v1, "UnknownException"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;->UnknownException:Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    .line 17
    new-instance v0, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    const-string v1, "SessionIdNotFound"

    invoke-direct {v0, v1, v4}, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;->SessionIdNotFound:Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    .line 18
    new-instance v0, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    const-string v1, "SessionNotValid"

    invoke-direct {v0, v1, v5}, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;->SessionNotValid:Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    .line 19
    new-instance v0, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    const-string v1, "DuplicatePostSequence"

    invoke-direct {v0, v1, v6}, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;->DuplicatePostSequence:Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    .line 20
    new-instance v0, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    const-string v1, "IntegrityCheckFailed"

    invoke-direct {v0, v1, v7}, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;->IntegrityCheckFailed:Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    .line 22
    new-instance v0, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    const-string v1, "AccountPasswordInvalid"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;->AccountPasswordInvalid:Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    .line 23
    new-instance v0, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    const-string v1, "SSO_AuthenticatePasswordInvalid"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;->SSO_AuthenticatePasswordInvalid:Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    .line 24
    new-instance v0, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    const-string v1, "SSO_AuthenticateMaxAttemptsExceeed"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;->SSO_AuthenticateMaxAttemptsExceeed:Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    .line 14
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    sget-object v1, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;->UnknownException:Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;->SessionIdNotFound:Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;->SessionNotValid:Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;->DuplicatePostSequence:Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;->IntegrityCheckFailed:Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;->AccountPasswordInvalid:Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;->SSO_AuthenticatePasswordInvalid:Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;->SSO_AuthenticateMaxAttemptsExceeed:Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;->$VALUES:[Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;->$VALUES:[Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    return-object v0
.end method
