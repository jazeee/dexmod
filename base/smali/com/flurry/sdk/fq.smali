.class final synthetic Lcom/flurry/sdk/fq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 74
    invoke-static {}, Lcom/flurry/sdk/fr;->values()[Lcom/flurry/sdk/fr;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/flurry/sdk/fq;->a:[I

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/fq;->a:[I

    sget-object v1, Lcom/flurry/sdk/fr;->c:Lcom/flurry/sdk/fr;

    invoke-virtual {v1}, Lcom/flurry/sdk/fr;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/fq;->a:[I

    sget-object v1, Lcom/flurry/sdk/fr;->d:Lcom/flurry/sdk/fr;

    invoke-virtual {v1}, Lcom/flurry/sdk/fr;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v0, Lcom/flurry/sdk/fq;->a:[I

    sget-object v1, Lcom/flurry/sdk/fr;->e:Lcom/flurry/sdk/fr;

    invoke-virtual {v1}, Lcom/flurry/sdk/fr;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v0, Lcom/flurry/sdk/fq;->a:[I

    sget-object v1, Lcom/flurry/sdk/fr;->f:Lcom/flurry/sdk/fr;

    invoke-virtual {v1}, Lcom/flurry/sdk/fr;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Lcom/flurry/sdk/fq;->a:[I

    sget-object v1, Lcom/flurry/sdk/fr;->b:Lcom/flurry/sdk/fr;

    invoke-virtual {v1}, Lcom/flurry/sdk/fr;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method