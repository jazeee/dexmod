.class final enum Lcom/samsung/android/sdk/healthdata/e;
.super Lcom/samsung/android/sdk/healthdata/d;
.source "HealthDataResolver.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2040
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/samsung/android/sdk/healthdata/d;-><init>(Ljava/lang/String;IIB)V

    return-void
.end method


# virtual methods
.method public final toSqlLiteral()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2043
    const-string v0, "SUM"

    return-object v0
.end method
