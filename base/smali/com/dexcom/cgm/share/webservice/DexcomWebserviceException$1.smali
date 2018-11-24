.class synthetic Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException$1;
.super Ljava/lang/Object;
.source "DexcomWebserviceException.java"


# static fields
.field static final synthetic $SwitchMap$retrofit$RetrofitError$Kind:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    invoke-static {}, Lretrofit/RetrofitError$Kind;->values()[Lretrofit/RetrofitError$Kind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException$1;->$SwitchMap$retrofit$RetrofitError$Kind:[I

    :try_start_0
    sget-object v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException$1;->$SwitchMap$retrofit$RetrofitError$Kind:[I

    sget-object v1, Lretrofit/RetrofitError$Kind;->NETWORK:Lretrofit/RetrofitError$Kind;

    invoke-virtual {v1}, Lretrofit/RetrofitError$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException$1;->$SwitchMap$retrofit$RetrofitError$Kind:[I

    sget-object v1, Lretrofit/RetrofitError$Kind;->HTTP:Lretrofit/RetrofitError$Kind;

    invoke-virtual {v1}, Lretrofit/RetrofitError$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException$1;->$SwitchMap$retrofit$RetrofitError$Kind:[I

    sget-object v1, Lretrofit/RetrofitError$Kind;->CONVERSION:Lretrofit/RetrofitError$Kind;

    invoke-virtual {v1}, Lretrofit/RetrofitError$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException$1;->$SwitchMap$retrofit$RetrofitError$Kind:[I

    sget-object v1, Lretrofit/RetrofitError$Kind;->UNEXPECTED:Lretrofit/RetrofitError$Kind;

    invoke-virtual {v1}, Lretrofit/RetrofitError$Kind;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
