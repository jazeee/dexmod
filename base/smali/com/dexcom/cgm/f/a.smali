.class public final Lcom/dexcom/cgm/f/a;
.super Ljava/lang/Object;
.source "ByteFormatter.java"


# static fields
.field private static final HexDigits:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/dexcom/cgm/f/a;->HexDigits:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static toHex(B)Ljava/lang/String;
    .locals 5

    .prologue
    .line 37
    and-int/lit16 v0, p0, 0xff

    .line 39
    const/4 v1, 0x2

    new-array v1, v1, [C

    .line 40
    const/4 v2, 0x0

    sget-object v3, Lcom/dexcom/cgm/f/a;->HexDigits:[C

    ushr-int/lit8 v4, v0, 0x4

    aget-char v3, v3, v4

    aput-char v3, v1, v2

    .line 41
    const/4 v2, 0x1

    sget-object v3, Lcom/dexcom/cgm/f/a;->HexDigits:[C

    and-int/lit8 v0, v0, 0xf

    aget-char v0, v3, v0

    aput-char v0, v1, v2

    .line 42
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static toHexWithLength([B)Ljava/lang/String;
    .locals 6

    .prologue
    .line 20
    if-nez p0, :cond_0

    .line 22
    const-string v0, "null"

    .line 32
    :goto_0
    return-object v0

    .line 24
    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [C

    .line 25
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 27
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    .line 28
    mul-int/lit8 v3, v0, 0x2

    sget-object v4, Lcom/dexcom/cgm/f/a;->HexDigits:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v1, v3

    .line 29
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/dexcom/cgm/f/a;->HexDigits:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    aput-char v2, v1, v3

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 32
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
