.class final enum Lcom/samsung/android/sdk/healthdata/g;
.super Lcom/samsung/android/sdk/healthdata/d;
.source "HealthDataResolver.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 2062
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/samsung/android/sdk/healthdata/d;-><init>(Ljava/lang/String;IIB)V

    return-void
.end method


# virtual methods
.method public final toSqlLiteral()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2065
    const-string v0, "MAX"

    return-object v0
.end method
