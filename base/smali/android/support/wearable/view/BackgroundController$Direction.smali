.class final enum Landroid/support/wearable/view/BackgroundController$Direction;
.super Ljava/lang/Enum;
.source "BackgroundController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/support/wearable/view/BackgroundController$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/support/wearable/view/BackgroundController$Direction;

.field public static final enum DOWN:Landroid/support/wearable/view/BackgroundController$Direction;

.field public static final enum LEFT:Landroid/support/wearable/view/BackgroundController$Direction;

.field public static final enum NONE:Landroid/support/wearable/view/BackgroundController$Direction;

.field public static final enum RIGHT:Landroid/support/wearable/view/BackgroundController$Direction;

.field public static final enum UP:Landroid/support/wearable/view/BackgroundController$Direction;


# instance fields
.field private final x:I

.field private final y:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    new-instance v0, Landroid/support/wearable/view/BackgroundController$Direction;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v3, v2, v3}, Landroid/support/wearable/view/BackgroundController$Direction;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/support/wearable/view/BackgroundController$Direction;->LEFT:Landroid/support/wearable/view/BackgroundController$Direction;

    new-instance v0, Landroid/support/wearable/view/BackgroundController$Direction;

    const-string v1, "UP"

    invoke-direct {v0, v1, v4, v3, v2}, Landroid/support/wearable/view/BackgroundController$Direction;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/support/wearable/view/BackgroundController$Direction;->UP:Landroid/support/wearable/view/BackgroundController$Direction;

    new-instance v0, Landroid/support/wearable/view/BackgroundController$Direction;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v5, v4, v3}, Landroid/support/wearable/view/BackgroundController$Direction;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/support/wearable/view/BackgroundController$Direction;->RIGHT:Landroid/support/wearable/view/BackgroundController$Direction;

    new-instance v0, Landroid/support/wearable/view/BackgroundController$Direction;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v6, v3, v4}, Landroid/support/wearable/view/BackgroundController$Direction;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/support/wearable/view/BackgroundController$Direction;->DOWN:Landroid/support/wearable/view/BackgroundController$Direction;

    new-instance v0, Landroid/support/wearable/view/BackgroundController$Direction;

    const-string v1, "NONE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/support/wearable/view/BackgroundController$Direction;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/support/wearable/view/BackgroundController$Direction;->NONE:Landroid/support/wearable/view/BackgroundController$Direction;

    .line 46
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/support/wearable/view/BackgroundController$Direction;

    sget-object v1, Landroid/support/wearable/view/BackgroundController$Direction;->LEFT:Landroid/support/wearable/view/BackgroundController$Direction;

    aput-object v1, v0, v3

    sget-object v1, Landroid/support/wearable/view/BackgroundController$Direction;->UP:Landroid/support/wearable/view/BackgroundController$Direction;

    aput-object v1, v0, v4

    sget-object v1, Landroid/support/wearable/view/BackgroundController$Direction;->RIGHT:Landroid/support/wearable/view/BackgroundController$Direction;

    aput-object v1, v0, v5

    sget-object v1, Landroid/support/wearable/view/BackgroundController$Direction;->DOWN:Landroid/support/wearable/view/BackgroundController$Direction;

    aput-object v1, v0, v6

    const/4 v1, 0x4

    sget-object v2, Landroid/support/wearable/view/BackgroundController$Direction;->NONE:Landroid/support/wearable/view/BackgroundController$Direction;

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/wearable/view/BackgroundController$Direction;->$VALUES:[Landroid/support/wearable/view/BackgroundController$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput p3, p0, Landroid/support/wearable/view/BackgroundController$Direction;->x:I

    .line 53
    iput p4, p0, Landroid/support/wearable/view/BackgroundController$Direction;->y:I

    .line 54
    return-void
.end method

.method static synthetic access$300(Landroid/support/wearable/view/BackgroundController$Direction;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Landroid/support/wearable/view/BackgroundController$Direction;->x:I

    return v0
.end method

.method static synthetic access$400(Landroid/support/wearable/view/BackgroundController$Direction;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Landroid/support/wearable/view/BackgroundController$Direction;->y:I

    return v0
.end method

.method static fromOffset(FF)Landroid/support/wearable/view/BackgroundController$Direction;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    cmpl-float v0, p1, v1

    if-eqz v0, :cond_1

    .line 70
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    sget-object v0, Landroid/support/wearable/view/BackgroundController$Direction;->DOWN:Landroid/support/wearable/view/BackgroundController$Direction;

    .line 75
    :goto_0
    return-object v0

    .line 70
    :cond_0
    sget-object v0, Landroid/support/wearable/view/BackgroundController$Direction;->UP:Landroid/support/wearable/view/BackgroundController$Direction;

    goto :goto_0

    .line 72
    :cond_1
    cmpl-float v0, p0, v1

    if-eqz v0, :cond_3

    .line 73
    cmpl-float v0, p0, v1

    if-lez v0, :cond_2

    sget-object v0, Landroid/support/wearable/view/BackgroundController$Direction;->RIGHT:Landroid/support/wearable/view/BackgroundController$Direction;

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/support/wearable/view/BackgroundController$Direction;->LEFT:Landroid/support/wearable/view/BackgroundController$Direction;

    goto :goto_0

    .line 75
    :cond_3
    sget-object v0, Landroid/support/wearable/view/BackgroundController$Direction;->NONE:Landroid/support/wearable/view/BackgroundController$Direction;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/wearable/view/BackgroundController$Direction;
    .locals 1

    .prologue
    .line 46
    const-class v0, Landroid/support/wearable/view/BackgroundController$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/view/BackgroundController$Direction;

    return-object v0
.end method

.method public static values()[Landroid/support/wearable/view/BackgroundController$Direction;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Landroid/support/wearable/view/BackgroundController$Direction;->$VALUES:[Landroid/support/wearable/view/BackgroundController$Direction;

    invoke-virtual {v0}, [Landroid/support/wearable/view/BackgroundController$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/wearable/view/BackgroundController$Direction;

    return-object v0
.end method


# virtual methods
.method final isHorizontal()Z
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Landroid/support/wearable/view/BackgroundController$Direction;->x:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isVertical()Z
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Landroid/support/wearable/view/BackgroundController$Direction;->y:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
