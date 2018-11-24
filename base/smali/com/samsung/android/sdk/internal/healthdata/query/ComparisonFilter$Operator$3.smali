.class final enum Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator$3;
.super Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;
.source "ComparisonFilter.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 73
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method public final toQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string v0, " <= "

    return-object v0
.end method
