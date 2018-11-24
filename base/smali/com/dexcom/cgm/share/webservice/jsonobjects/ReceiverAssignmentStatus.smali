.class public final enum Lcom/dexcom/cgm/share/webservice/jsonobjects/ReceiverAssignmentStatus;
.super Ljava/lang/Enum;
.source "ReceiverAssignmentStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/share/webservice/jsonobjects/ReceiverAssignmentStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/share/webservice/jsonobjects/ReceiverAssignmentStatus;

.field public static final enum AssignedToSomeoneElse:Lcom/dexcom/cgm/share/webservice/jsonobjects/ReceiverAssignmentStatus;

.field public static final enum AssignedToYou:Lcom/dexcom/cgm/share/webservice/jsonobjects/ReceiverAssignmentStatus;

.field public static final enum NotAssigned:Lcom/dexcom/cgm/share/webservice/jsonobjects/ReceiverAssignmentStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ReceiverAssignmentStatus;

    const-string v1, "NotAssigned"

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/share/webservice/jsonobjects/ReceiverAssignmentStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ReceiverAssignmentStatus;->NotAssigned:Lcom/dexcom/cgm/share/webservice/jsonobjects/ReceiverAssignmentStatus;

    .line 15
    new-instance v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ReceiverAssignmentStatus;

    const-string v1, "AssignedToYou"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/share/webservice/jsonobjects/ReceiverAssignmentStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ReceiverAssignmentStatus;->AssignedToYou:Lcom/dexcom/cgm/share/webservice/jsonobjects/ReceiverAssignmentStatus;

    .line 16
    new-instance v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ReceiverAssignmentStatus;

    const-string v1, "AssignedToSomeoneElse"

    invoke-direct {v0, v1, v4}, Lcom/dexcom/cgm/share/webservice/jsonobjects/ReceiverAssignmentStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ReceiverAssignmentStatus;->AssignedToSomeoneElse:Lcom/dexcom/cgm/share/webservice/jsonobjects/ReceiverAssignmentStatus;

    .line 12
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dexcom/cgm/share/webservice/jsonobjects/ReceiverAssignmentStatus;

    sget-object v1, Lcom/dexcom/cgm/share/webservice/jsonobjects/ReceiverAssignmentStatus;->NotAssigned:Lcom/dexcom/cgm/share/webservice/jsonobjects/ReceiverAssignmentStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dexcom/cgm/share/webservice/jsonobjects/ReceiverAssignmentStatus;->AssignedToYou:Lcom/dexcom/cgm/share/webservice/jsonobjects/ReceiverAssignmentStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/share/webservice/jsonobjects/ReceiverAssignmentStatus;->AssignedToSomeoneElse:Lcom/dexcom/cgm/share/webservice/jsonobjects/ReceiverAssignmentStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ReceiverAssignmentStatus;->$VALUES:[Lcom/dexcom/cgm/share/webservice/jsonobjects/ReceiverAssignmentStatus;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/share/webservice/jsonobjects/ReceiverAssignmentStatus;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ReceiverAssignmentStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ReceiverAssignmentStatus;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/share/webservice/jsonobjects/ReceiverAssignmentStatus;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ReceiverAssignmentStatus;->$VALUES:[Lcom/dexcom/cgm/share/webservice/jsonobjects/ReceiverAssignmentStatus;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/share/webservice/jsonobjects/ReceiverAssignmentStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/share/webservice/jsonobjects/ReceiverAssignmentStatus;

    return-object v0
.end method
