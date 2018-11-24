.class public final Lcom/dexcom/cgm/a/d;
.super Ljava/lang/Enum;
.source "AlertProperties.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/a/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$4d0dc9c4:[I

.field public static final enum High$6b2c33b7:I

.field public static final enum Low$6b2c33b7:I

.field public static final enum Medium$6b2c33b7:I

.field public static final enum MediumHigh$6b2c33b7:I

.field public static final enum None$6b2c33b7:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v0, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 74
    sput v3, Lcom/dexcom/cgm/a/d;->None$6b2c33b7:I

    .line 75
    sput v4, Lcom/dexcom/cgm/a/d;->Low$6b2c33b7:I

    .line 76
    sput v5, Lcom/dexcom/cgm/a/d;->Medium$6b2c33b7:I

    .line 77
    sput v6, Lcom/dexcom/cgm/a/d;->MediumHigh$6b2c33b7:I

    .line 78
    sput v0, Lcom/dexcom/cgm/a/d;->High$6b2c33b7:I

    .line 72
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/dexcom/cgm/a/d;->None$6b2c33b7:I

    aput v2, v0, v1

    sget v1, Lcom/dexcom/cgm/a/d;->Low$6b2c33b7:I

    aput v1, v0, v3

    sget v1, Lcom/dexcom/cgm/a/d;->Medium$6b2c33b7:I

    aput v1, v0, v4

    sget v1, Lcom/dexcom/cgm/a/d;->MediumHigh$6b2c33b7:I

    aput v1, v0, v5

    sget v1, Lcom/dexcom/cgm/a/d;->High$6b2c33b7:I

    aput v1, v0, v6

    sput-object v0, Lcom/dexcom/cgm/a/d;->$VALUES$4d0dc9c4:[I

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
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values$7e0f2f83()[I
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/dexcom/cgm/a/d;->$VALUES$4d0dc9c4:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
