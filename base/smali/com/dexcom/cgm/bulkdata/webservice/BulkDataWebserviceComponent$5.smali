.class synthetic Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$5;
.super Ljava/lang/Object;
.source "BulkDataWebserviceComponent.java"


# static fields
.field static final synthetic $SwitchMap$com$dexcom$cgm$bulkdata$webservice$exceptions$DexcomWebserviceExceptionType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 188
    invoke-static {}, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;->values()[Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$5;->$SwitchMap$com$dexcom$cgm$bulkdata$webservice$exceptions$DexcomWebserviceExceptionType:[I

    :try_start_0
    sget-object v0, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$5;->$SwitchMap$com$dexcom$cgm$bulkdata$webservice$exceptions$DexcomWebserviceExceptionType:[I

    sget-object v1, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;->AccountPasswordInvalid:Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    invoke-virtual {v1}, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$5;->$SwitchMap$com$dexcom$cgm$bulkdata$webservice$exceptions$DexcomWebserviceExceptionType:[I

    sget-object v1, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;->SSO_AuthenticatePasswordInvalid:Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    invoke-virtual {v1}, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$5;->$SwitchMap$com$dexcom$cgm$bulkdata$webservice$exceptions$DexcomWebserviceExceptionType:[I

    sget-object v1, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;->SSO_AuthenticateMaxAttemptsExceeed:Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    invoke-virtual {v1}, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
