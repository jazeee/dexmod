.class public final enum Lcom/dexcom/cgm/test/api/TestResponse$TestResult;
.super Ljava/lang/Enum;
.source "TestResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/test/api/TestResponse$TestResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/test/api/TestResponse$TestResult;

.field public static final enum Duplicate:Lcom/dexcom/cgm/test/api/TestResponse$TestResult;

.field public static final enum Failure:Lcom/dexcom/cgm/test/api/TestResponse$TestResult;

.field public static final enum Success:Lcom/dexcom/cgm/test/api/TestResponse$TestResult;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 105
    new-instance v0, Lcom/dexcom/cgm/test/api/TestResponse$TestResult;

    const-string v1, "Success"

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/TestResponse$TestResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/TestResponse$TestResult;->Success:Lcom/dexcom/cgm/test/api/TestResponse$TestResult;

    .line 106
    new-instance v0, Lcom/dexcom/cgm/test/api/TestResponse$TestResult;

    const-string v1, "Failure"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/test/api/TestResponse$TestResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/TestResponse$TestResult;->Failure:Lcom/dexcom/cgm/test/api/TestResponse$TestResult;

    .line 107
    new-instance v0, Lcom/dexcom/cgm/test/api/TestResponse$TestResult;

    const-string v1, "Duplicate"

    invoke-direct {v0, v1, v4}, Lcom/dexcom/cgm/test/api/TestResponse$TestResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/TestResponse$TestResult;->Duplicate:Lcom/dexcom/cgm/test/api/TestResponse$TestResult;

    .line 103
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dexcom/cgm/test/api/TestResponse$TestResult;

    sget-object v1, Lcom/dexcom/cgm/test/api/TestResponse$TestResult;->Success:Lcom/dexcom/cgm/test/api/TestResponse$TestResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dexcom/cgm/test/api/TestResponse$TestResult;->Failure:Lcom/dexcom/cgm/test/api/TestResponse$TestResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/test/api/TestResponse$TestResult;->Duplicate:Lcom/dexcom/cgm/test/api/TestResponse$TestResult;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dexcom/cgm/test/api/TestResponse$TestResult;->$VALUES:[Lcom/dexcom/cgm/test/api/TestResponse$TestResult;

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
    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/test/api/TestResponse$TestResult;
    .locals 1

    .prologue
    .line 103
    const-class v0, Lcom/dexcom/cgm/test/api/TestResponse$TestResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/test/api/TestResponse$TestResult;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/test/api/TestResponse$TestResult;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/dexcom/cgm/test/api/TestResponse$TestResult;->$VALUES:[Lcom/dexcom/cgm/test/api/TestResponse$TestResult;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/test/api/TestResponse$TestResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/test/api/TestResponse$TestResult;

    return-object v0
.end method
