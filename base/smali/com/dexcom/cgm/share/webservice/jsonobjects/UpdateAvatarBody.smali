.class public Lcom/dexcom/cgm/share/webservice/jsonobjects/UpdateAvatarBody;
.super Ljava/lang/Object;
.source "UpdateAvatarBody.java"


# instance fields
.field private ImageData:[I

.field private ImageType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getIntArrayFromByteArray([B)[I
    .locals 3

    .prologue
    .line 31
    array-length v0, p1

    new-array v1, v0, [I

    .line 32
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 33
    aget-byte v2, p1, v0

    invoke-static {v2}, Lcom/dexcom/cgm/share/webservice/jsonobjects/UpdateAvatarBody;->unsignedFromByte(B)I

    move-result v2

    aput v2, v1, v0

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    :cond_0
    return-object v1
.end method

.method private static unsignedFromByte(B)I
    .locals 1

    .prologue
    .line 16
    and-int/lit16 v0, p0, 0xff

    return v0
.end method


# virtual methods
.method public getImageData()[I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/UpdateAvatarBody;->ImageData:[I

    return-object v0
.end method

.method public getImageType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/UpdateAvatarBody;->ImageType:Ljava/lang/String;

    return-object v0
.end method

.method public setImage([B)V
    .locals 1

    .prologue
    .line 21
    const-string v0, "image/jpeg"

    iput-object v0, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/UpdateAvatarBody;->ImageType:Ljava/lang/String;

    .line 26
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/share/webservice/jsonobjects/UpdateAvatarBody;->getIntArrayFromByteArray([B)[I

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/UpdateAvatarBody;->ImageData:[I

    .line 27
    return-void
.end method
