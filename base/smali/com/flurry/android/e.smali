.class public final enum Lcom/flurry/android/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/android/e;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/flurry/android/e;

.field public static final enum kFlurryEventAnalyticsDisabled:Lcom/flurry/android/e;

.field public static final enum kFlurryEventFailed:Lcom/flurry/android/e;

.field public static final enum kFlurryEventLogCountExceeded:Lcom/flurry/android/e;

.field public static final enum kFlurryEventLoggingDelayed:Lcom/flurry/android/e;

.field public static final enum kFlurryEventParamsCountExceeded:Lcom/flurry/android/e;

.field public static final enum kFlurryEventRecorded:Lcom/flurry/android/e;

.field public static final enum kFlurryEventUniqueCountExceeded:Lcom/flurry/android/e;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/flurry/android/e;

    const-string v1, "kFlurryEventFailed"

    invoke-direct {v0, v1, v3}, Lcom/flurry/android/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/e;->kFlurryEventFailed:Lcom/flurry/android/e;

    .line 8
    new-instance v0, Lcom/flurry/android/e;

    const-string v1, "kFlurryEventRecorded"

    invoke-direct {v0, v1, v4}, Lcom/flurry/android/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/e;->kFlurryEventRecorded:Lcom/flurry/android/e;

    .line 9
    new-instance v0, Lcom/flurry/android/e;

    const-string v1, "kFlurryEventUniqueCountExceeded"

    invoke-direct {v0, v1, v5}, Lcom/flurry/android/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/e;->kFlurryEventUniqueCountExceeded:Lcom/flurry/android/e;

    .line 10
    new-instance v0, Lcom/flurry/android/e;

    const-string v1, "kFlurryEventParamsCountExceeded"

    invoke-direct {v0, v1, v6}, Lcom/flurry/android/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/e;->kFlurryEventParamsCountExceeded:Lcom/flurry/android/e;

    .line 11
    new-instance v0, Lcom/flurry/android/e;

    const-string v1, "kFlurryEventLogCountExceeded"

    invoke-direct {v0, v1, v7}, Lcom/flurry/android/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/e;->kFlurryEventLogCountExceeded:Lcom/flurry/android/e;

    .line 12
    new-instance v0, Lcom/flurry/android/e;

    const-string v1, "kFlurryEventLoggingDelayed"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/flurry/android/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/e;->kFlurryEventLoggingDelayed:Lcom/flurry/android/e;

    .line 13
    new-instance v0, Lcom/flurry/android/e;

    const-string v1, "kFlurryEventAnalyticsDisabled"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/flurry/android/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/e;->kFlurryEventAnalyticsDisabled:Lcom/flurry/android/e;

    .line 6
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/flurry/android/e;

    sget-object v1, Lcom/flurry/android/e;->kFlurryEventFailed:Lcom/flurry/android/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/android/e;->kFlurryEventRecorded:Lcom/flurry/android/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/android/e;->kFlurryEventUniqueCountExceeded:Lcom/flurry/android/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/android/e;->kFlurryEventParamsCountExceeded:Lcom/flurry/android/e;

    aput-object v1, v0, v6

    sget-object v1, Lcom/flurry/android/e;->kFlurryEventLogCountExceeded:Lcom/flurry/android/e;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/android/e;->kFlurryEventLoggingDelayed:Lcom/flurry/android/e;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/android/e;->kFlurryEventAnalyticsDisabled:Lcom/flurry/android/e;

    aput-object v2, v0, v1

    sput-object v0, Lcom/flurry/android/e;->a:[Lcom/flurry/android/e;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/android/e;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/flurry/android/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/e;

    return-object v0
.end method

.method public static values()[Lcom/flurry/android/e;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/flurry/android/e;->a:[Lcom/flurry/android/e;

    invoke-virtual {v0}, [Lcom/flurry/android/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/android/e;

    return-object v0
.end method
