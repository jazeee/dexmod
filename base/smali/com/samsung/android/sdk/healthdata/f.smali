.class final enum Lcom/samsung/android/sdk/healthdata/f;
.super Lcom/samsung/android/sdk/healthdata/d;
.source "HealthDataResolver.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2051
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/samsung/android/sdk/healthdata/d;-><init>(Ljava/lang/String;IIB)V

    return-void
.end method


# virtual methods
.method public final toSqlLiteral()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2054
    const-string v0, "MIN"

    return-object v0
.end method
