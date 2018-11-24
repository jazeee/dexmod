.class public final Lcom/dexcom/a/a/c;
.super Ljava/lang/Enum;
.source "DexTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/a/a/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$633fa6ff:[I

.field public static final enum Friday$8bc55e6:I

.field public static final enum Monday$8bc55e6:I

.field public static final enum Saturday$8bc55e6:I

.field public static final enum Sunday$8bc55e6:I

.field public static final enum Thursday$8bc55e6:I

.field public static final enum Tuesday$8bc55e6:I

.field public static final enum Wednesday$8bc55e6:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 102
    sput v3, Lcom/dexcom/a/a/c;->Monday$8bc55e6:I

    .line 103
    sput v4, Lcom/dexcom/a/a/c;->Tuesday$8bc55e6:I

    .line 104
    sput v5, Lcom/dexcom/a/a/c;->Wednesday$8bc55e6:I

    .line 105
    sput v6, Lcom/dexcom/a/a/c;->Thursday$8bc55e6:I

    .line 106
    sput v7, Lcom/dexcom/a/a/c;->Friday$8bc55e6:I

    .line 107
    const/4 v0, 0x6

    sput v0, Lcom/dexcom/a/a/c;->Saturday$8bc55e6:I

    .line 108
    const/4 v0, 0x7

    sput v0, Lcom/dexcom/a/a/c;->Sunday$8bc55e6:I

    .line 100
    const/4 v0, 0x7

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/dexcom/a/a/c;->Monday$8bc55e6:I

    aput v2, v0, v1

    sget v1, Lcom/dexcom/a/a/c;->Tuesday$8bc55e6:I

    aput v1, v0, v3

    sget v1, Lcom/dexcom/a/a/c;->Wednesday$8bc55e6:I

    aput v1, v0, v4

    sget v1, Lcom/dexcom/a/a/c;->Thursday$8bc55e6:I

    aput v1, v0, v5

    sget v1, Lcom/dexcom/a/a/c;->Friday$8bc55e6:I

    aput v1, v0, v6

    sget v1, Lcom/dexcom/a/a/c;->Saturday$8bc55e6:I

    aput v1, v0, v7

    const/4 v1, 0x6

    sget v2, Lcom/dexcom/a/a/c;->Sunday$8bc55e6:I

    aput v2, v0, v1

    sput-object v0, Lcom/dexcom/a/a/c;->$VALUES$633fa6ff:[I

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
    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values$34b7e0()[I
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/dexcom/a/a/c;->$VALUES$633fa6ff:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
