.class public final Lcom/google/common/net/InetAddresses;
.super Ljava/lang/Object;
.source "InetAddresses.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# static fields
.field private static final ANY4:Ljava/net/Inet4Address;

.field private static final IPV4_PART_COUNT:I = 0x4

.field private static final IPV6_PART_COUNT:I = 0x8

.field private static final LOOPBACK4:Ljava/net/Inet4Address;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    const-string v0, "127.0.0.1"

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Lcom/google/common/net/InetAddresses;->LOOPBACK4:Ljava/net/Inet4Address;

    .line 118
    const-string v0, "0.0.0.0"

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/net/Inet4Address;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    return-object v0
.end method

.method private static bytesToInetAddress([B)Ljava/net/InetAddress;
    .locals 2

    .prologue
    .line 331
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 332
    :catch_0
    move-exception v0

    .line 333
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static coerceToInteger(Ljava/net/InetAddress;)I
    .locals 1

    .prologue
    .line 938
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getCoercedIPv4Address(Ljava/net/InetAddress;)Ljava/net/Inet4Address;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->newDataInput([B)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/io/ByteArrayDataInput;->readInt()I

    move-result v0

    return v0
.end method

.method private static compressLongestRunOfZeroes([I)V
    .locals 6

    .prologue
    const/4 v2, -0x1

    .line 381
    .line 384
    const/4 v0, 0x0

    move v1, v2

    move v3, v2

    move v4, v2

    :goto_0
    array-length v5, p0

    add-int/lit8 v5, v5, 0x1

    if-ge v0, v5, :cond_2

    .line 385
    array-length v5, p0

    if-ge v0, v5, :cond_1

    aget v5, p0, v0

    if-nez v5, :cond_1

    .line 386
    if-gez v1, :cond_0

    move v1, v0

    .line 384
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    :cond_1
    if-ltz v1, :cond_0

    .line 390
    sub-int v5, v0, v1

    .line 391
    if-le v5, v3, :cond_4

    move v3, v5

    :goto_2
    move v4, v1

    move v1, v2

    .line 395
    goto :goto_1

    .line 398
    :cond_2
    const/4 v0, 0x2

    if-lt v3, v0, :cond_3

    .line 399
    add-int v0, v4, v3

    invoke-static {p0, v4, v0, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 401
    :cond_3
    return-void

    :cond_4
    move v1, v4

    goto :goto_2
.end method

.method private static convertDottedQuadToHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 286
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 287
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 288
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 289
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV4(Ljava/lang/String;)[B

    move-result-object v0

    .line 290
    if-nez v0, :cond_0

    .line 291
    const/4 v0, 0x0

    .line 295
    :goto_0
    return-object v0

    .line 293
    :cond_0
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 294
    const/4 v3, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 295
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static decrement(Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 981
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    .line 982
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    .line 983
    :goto_0
    if-ltz v3, :cond_0

    aget-byte v0, v4, v3

    if-nez v0, :cond_0

    .line 984
    const/4 v0, -0x1

    aput-byte v0, v4, v3

    .line 985
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_0

    .line 988
    :cond_0
    if-ltz v3, :cond_1

    move v0, v1

    :goto_1
    const-string v5, "Decrementing %s would wrap."

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v0, v5, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 990
    aget-byte v0, v4, v3

    add-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    aput-byte v0, v4, v3

    .line 991
    invoke-static {v4}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v2

    .line 988
    goto :goto_1
.end method

.method public static forString(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 4

    .prologue
    .line 149
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 152
    if-nez v0, :cond_0

    .line 153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'%s\' is not an IP string literal."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static forUriString(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 485
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 491
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 492
    const/16 v0, 0x10

    .line 499
    :goto_0
    invoke-static {v1}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 500
    if-eqz v1, :cond_0

    array-length v2, v1

    if-eq v2, v0, :cond_2

    .line 501
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a valid URI IP literal: \'%s\'"

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 495
    :cond_1
    const/4 v0, 0x4

    move-object v1, p0

    goto :goto_0

    .line 505
    :cond_2
    invoke-static {v1}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static fromInteger(I)Ljava/net/Inet4Address;
    .locals 1

    .prologue
    .line 949
    invoke-static {p0}, Lcom/google/common/primitives/Ints;->toByteArray(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static fromLittleEndianByteArray([B)Ljava/net/InetAddress;
    .locals 3

    .prologue
    .line 964
    array-length v0, p0

    new-array v1, v0, [B

    .line 965
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 966
    array-length v2, p0

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p0, v2

    aput-byte v2, v1, v0

    .line 965
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 968
    :cond_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static get6to4IPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .locals 5

    .prologue
    .line 603
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    const-string v1, "Address \'%s\' is not a 6to4 address."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 606
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static getCoercedIPv4Address(Ljava/net/InetAddress;)Ljava/net/Inet4Address;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/16 v5, 0xf

    const/4 v1, 0x0

    .line 872
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    .line 873
    check-cast p0, Ljava/net/Inet4Address;

    .line 913
    :goto_0
    return-object p0

    .line 877
    :cond_0
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    move v0, v1

    .line 879
    :goto_1
    if-ge v0, v5, :cond_6

    .line 880
    aget-byte v4, v3, v0

    if-eqz v4, :cond_1

    move v0, v1

    .line 885
    :goto_2
    if-eqz v0, :cond_2

    aget-byte v4, v3, v5

    if-ne v4, v2, :cond_2

    .line 886
    sget-object p0, Lcom/google/common/net/InetAddresses;->LOOPBACK4:Ljava/net/Inet4Address;

    goto :goto_0

    .line 879
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 887
    :cond_2
    if-eqz v0, :cond_3

    aget-byte v0, v3, v5

    if-nez v0, :cond_3

    .line 888
    sget-object p0, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    goto :goto_0

    .line 891
    :cond_3
    check-cast p0, Ljava/net/Inet6Address;

    .line 893
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->hasEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 894
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Inet4Address;->hashCode()I

    move-result v0

    int-to-long v0, v0

    .line 902
    :goto_3
    invoke-static {}, Lcom/google/common/hash/Hashing;->murmur3_32()Lcom/google/common/hash/HashFunction;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/google/common/hash/HashFunction;->hashLong(J)Lcom/google/common/hash/HashCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/hash/HashCode;->asInt()I

    move-result v0

    .line 905
    const/high16 v1, -0x20000000

    or-int/2addr v0, v1

    .line 909
    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 910
    const/4 v0, -0x2

    .line 913
    :cond_4
    invoke-static {v0}, Lcom/google/common/primitives/Ints;->toByteArray(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object p0

    goto :goto_0

    .line 898
    :cond_5
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_2
.end method

.method public static getCompatIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .locals 5

    .prologue
    .line 570
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    const-string v1, "Address \'%s\' is not IPv4-compatible."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 573
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static getEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .locals 5

    .prologue
    .line 795
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 796
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getCompatIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    move-result-object v0

    .line 804
    :goto_0
    return-object v0

    .line 799
    :cond_0
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 800
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->get6to4IPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    move-result-object v0

    goto :goto_0

    .line 803
    :cond_1
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 804
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getTeredoInfo(Ljava/net/Inet6Address;)Lcom/google/common/net/InetAddresses$TeredoInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/net/InetAddresses$TeredoInfo;->getClient()Ljava/net/Inet4Address;

    move-result-object v0

    goto :goto_0

    .line 807
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'%s\' has no embedded IPv4 address."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getInet4Address([B)Ljava/net/Inet4Address;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 130
    array-length v0, p0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Byte array has invalid length for an IPv4 address: %s != 4."

    new-array v1, v1, [Ljava/lang/Object;

    array-length v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 135
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    return-object v0

    :cond_0
    move v0, v2

    .line 130
    goto :goto_0
.end method

.method public static getIsatapIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .locals 5

    .prologue
    .line 759
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isIsatapAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    const-string v1, "Address \'%s\' is not an ISATAP address."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 762
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static getTeredoInfo(Ljava/net/Inet6Address;)Lcom/google/common/net/InetAddresses$TeredoInfo;
    .locals 7

    .prologue
    const v6, 0xffff

    const/16 v5, 0x8

    const/4 v0, 0x0

    .line 694
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v1

    const-string v2, "Address \'%s\' is not a Teredo address."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 697
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v1

    .line 698
    const/4 v2, 0x4

    invoke-static {v1, v2, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v2

    .line 700
    invoke-static {v1, v5}, Lcom/google/common/io/ByteStreams;->newDataInput([BI)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/common/io/ByteArrayDataInput;->readShort()S

    move-result v3

    and-int/2addr v3, v6

    .line 703
    const/16 v4, 0xa

    invoke-static {v1, v4}, Lcom/google/common/io/ByteStreams;->newDataInput([BI)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/common/io/ByteArrayDataInput;->readShort()S

    move-result v4

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v4, v6

    .line 705
    const/16 v5, 0xc

    const/16 v6, 0x10

    invoke-static {v1, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 706
    :goto_0
    array-length v5, v1

    if-ge v0, v5, :cond_0

    .line 708
    aget-byte v5, v1, v0

    xor-int/lit8 v5, v5, -0x1

    int-to-byte v5, v5

    aput-byte v5, v1, v0

    .line 706
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 710
    :cond_0
    invoke-static {v1}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    .line 712
    new-instance v1, Lcom/google/common/net/InetAddresses$TeredoInfo;

    invoke-direct {v1, v2, v0, v4, v3}, Lcom/google/common/net/InetAddresses$TeredoInfo;-><init>(Ljava/net/Inet4Address;Ljava/net/Inet4Address;II)V

    return-object v1
.end method

.method public static hasEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Z
    .locals 1

    .prologue
    .line 778
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static hextetsToIPv6String([I)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 418
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v1

    move v2, v1

    .line 420
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_5

    .line 421
    aget v3, p0, v0

    if-ltz v3, :cond_2

    const/4 v3, 0x1

    .line 422
    :goto_1
    if-eqz v3, :cond_3

    .line 423
    if-eqz v2, :cond_0

    .line 424
    const/16 v2, 0x3a

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 426
    :cond_0
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_0

    :cond_2
    move v3, v1

    .line 421
    goto :goto_1

    .line 428
    :cond_3
    if-eqz v0, :cond_4

    if-eqz v2, :cond_1

    .line 429
    :cond_4
    const-string v2, "::"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 434
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static increment(Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1004
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    .line 1005
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    .line 1006
    :goto_0
    if-ltz v3, :cond_0

    aget-byte v0, v4, v3

    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    .line 1007
    aput-byte v2, v4, v3

    .line 1008
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_0

    .line 1011
    :cond_0
    if-ltz v3, :cond_1

    move v0, v1

    :goto_1
    const-string v5, "Incrementing %s would wrap."

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v0, v5, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1013
    aget-byte v0, v4, v3

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    aput-byte v0, v4, v3

    .line 1014
    invoke-static {v4}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v2

    .line 1011
    goto :goto_1
.end method

.method private static ipStringToBytes(Ljava/lang/String;)[B
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 173
    move v1, v0

    move v2, v0

    .line 175
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 176
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 177
    const/16 v6, 0x2e

    if-ne v5, v6, :cond_1

    move v1, v3

    .line 175
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_1
    const/16 v6, 0x3a

    if-ne v5, v6, :cond_3

    .line 180
    if-eqz v1, :cond_2

    move-object v0, v4

    .line 201
    :goto_2
    return-object v0

    :cond_2
    move v2, v3

    .line 183
    goto :goto_1

    .line 184
    :cond_3
    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    move-object v0, v4

    .line 185
    goto :goto_2

    .line 190
    :cond_4
    if-eqz v2, :cond_6

    .line 191
    if-eqz v1, :cond_5

    .line 192
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->convertDottedQuadToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 193
    if-nez p0, :cond_5

    move-object v0, v4

    .line 194
    goto :goto_2

    .line 197
    :cond_5
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV6(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_2

    .line 198
    :cond_6
    if-eqz v1, :cond_7

    .line 199
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV4(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_2

    :cond_7
    move-object v0, v4

    .line 201
    goto :goto_2
.end method

.method public static is6to4Address(Ljava/net/Inet6Address;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 591
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v2

    .line 592
    aget-byte v3, v2, v1

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    aget-byte v2, v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isCompatIPv4Address(Ljava/net/Inet6Address;)Z
    .locals 5

    .prologue
    const/16 v4, 0xf

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 549
    invoke-virtual {p0}, Ljava/net/Inet6Address;->isIPv4CompatibleAddress()Z

    move-result v2

    if-nez v2, :cond_1

    .line 559
    :cond_0
    :goto_0
    return v0

    .line 553
    :cond_1
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v2

    .line 554
    const/16 v3, 0xc

    aget-byte v3, v2, v3

    if-nez v3, :cond_2

    const/16 v3, 0xd

    aget-byte v3, v2, v3

    if-nez v3, :cond_2

    const/16 v3, 0xe

    aget-byte v3, v2, v3

    if-nez v3, :cond_2

    aget-byte v3, v2, v4

    if-eqz v3, :cond_0

    aget-byte v2, v2, v4

    if-eq v2, v1, :cond_0

    :cond_2
    move v0, v1

    .line 559
    goto :goto_0
.end method

.method public static isInetAddress(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 168
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isIsatapAddress(Ljava/net/Inet6Address;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 734
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 747
    :cond_0
    :goto_0
    return v0

    .line 738
    :cond_1
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v1

    .line 740
    const/16 v2, 0x8

    aget-byte v2, v1, v2

    or-int/lit8 v2, v2, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 747
    const/16 v2, 0x9

    aget-byte v2, v1, v2

    if-nez v2, :cond_0

    const/16 v2, 0xa

    aget-byte v2, v1, v2

    const/16 v3, 0x5e

    if-ne v2, v3, :cond_0

    const/16 v2, 0xb

    aget-byte v1, v1, v2

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isMappedIPv4Address(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/16 v1, 0xa

    const/4 v0, 0x0

    .line 834
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 835
    if-eqz v3, :cond_0

    array-length v2, v3

    const/16 v4, 0x10

    if-ne v2, v4, :cond_0

    move v2, v0

    .line 836
    :goto_0
    if-ge v2, v1, :cond_3

    .line 837
    aget-byte v4, v3, v2

    if-eqz v4, :cond_1

    .line 848
    :cond_0
    :goto_1
    return v0

    .line 836
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 841
    :cond_2
    add-int/lit8 v1, v1, 0x1

    :cond_3
    const/16 v2, 0xc

    if-ge v1, v2, :cond_4

    .line 842
    aget-byte v2, v3, v1

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    goto :goto_1

    .line 846
    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static isMaximum(Ljava/net/InetAddress;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1026
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    move v0, v1

    .line 1027
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 1028
    aget-byte v3, v2, v0

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 1032
    :goto_1
    return v1

    .line 1027
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1032
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static isTeredoAddress(Ljava/net/Inet6Address;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 681
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v2

    .line 682
    aget-byte v3, v2, v1

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    aget-byte v3, v2, v0

    if-ne v3, v0, :cond_0

    const/4 v3, 0x2

    aget-byte v3, v2, v3

    if-nez v3, :cond_0

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isUriInetAddress(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 517
    :try_start_0
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->forUriString(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    const/4 v0, 0x1

    .line 520
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parseHextet(Ljava/lang/String;)S
    .locals 2

    .prologue
    .line 311
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 312
    const v1, 0xffff

    if-le v0, v1, :cond_0

    .line 313
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    .line 315
    :cond_0
    int-to-short v0, v0

    return v0
.end method

.method private static parseOctet(Ljava/lang/String;)B
    .locals 3

    .prologue
    .line 300
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 303
    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 304
    :cond_0
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    .line 306
    :cond_1
    int-to-byte v0, v0

    return v0
.end method

.method private static textToNumericFormatV4(Ljava/lang/String;)[B
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x4

    .line 205
    const-string v1, "\\."

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 206
    array-length v1, v3

    if-eq v1, v5, :cond_0

    .line 219
    :goto_0
    return-object v0

    .line 210
    :cond_0
    new-array v1, v5, [B

    .line 212
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_1

    .line 213
    :try_start_0
    aget-object v4, v3, v2

    invoke-static {v4}, Lcom/google/common/net/InetAddresses;->parseOctet(Ljava/lang/String;)B

    move-result v4

    aput-byte v4, v1, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 219
    goto :goto_0

    .line 216
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static textToNumericFormatV6(Ljava/lang/String;)[B
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 224
    const-string v0, ":"

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 225
    array-length v0, v5

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    array-length v0, v5

    const/16 v1, 0x9

    if-le v0, v1, :cond_1

    :cond_0
    move-object v0, v2

    .line 282
    :goto_0
    return-object v0

    .line 231
    :cond_1
    const/4 v1, -0x1

    .line 232
    const/4 v0, 0x1

    :goto_1
    array-length v4, v5

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_4

    .line 233
    aget-object v4, v5, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 234
    if-ltz v1, :cond_2

    move-object v0, v2

    .line 235
    goto :goto_0

    :cond_2
    move v1, v0

    .line 232
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 243
    :cond_4
    if-ltz v1, :cond_7

    .line 246
    array-length v0, v5

    sub-int/2addr v0, v1

    add-int/lit8 v4, v0, -0x1

    .line 247
    aget-object v0, v5, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    add-int/lit8 v0, v1, -0x1

    if-eqz v0, :cond_6

    move-object v0, v2

    .line 248
    goto :goto_0

    :cond_5
    move v0, v1

    .line 250
    :cond_6
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_e

    add-int/lit8 v4, v4, -0x1

    if-eqz v4, :cond_e

    move-object v0, v2

    .line 251
    goto :goto_0

    .line 256
    :cond_7
    array-length v0, v5

    move v4, v0

    move v0, v3

    .line 262
    :goto_2
    add-int v6, v4, v0

    rsub-int/lit8 v6, v6, 0x8

    .line 263
    if-ltz v1, :cond_9

    if-lez v6, :cond_a

    .line 268
    :cond_8
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    move v1, v3

    .line 270
    :goto_3
    if-ge v1, v4, :cond_b

    .line 271
    :try_start_0
    aget-object v8, v5, v1

    invoke-static {v8}, Lcom/google/common/net/InetAddresses;->parseHextet(Ljava/lang/String;)S

    move-result v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 270
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 263
    :cond_9
    if-eqz v6, :cond_8

    :cond_a
    move-object v0, v2

    .line 264
    goto :goto_0

    :cond_b
    move v1, v3

    .line 273
    :goto_4
    if-ge v1, v6, :cond_c

    .line 274
    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 276
    :cond_c
    :goto_5
    if-lez v0, :cond_d

    .line 277
    array-length v1, v5

    sub-int/2addr v1, v0

    aget-object v1, v5, v1

    invoke-static {v1}, Lcom/google/common/net/InetAddresses;->parseHextet(Ljava/lang/String;)S

    move-result v1

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 280
    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_0

    .line 282
    :cond_d
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto/16 :goto_0

    :cond_e
    move v9, v4

    move v4, v0

    move v0, v9

    goto :goto_2
.end method

.method public static toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v1, 0x0

    .line 355
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 368
    :goto_0
    return-object v0

    .line 360
    :cond_0
    instance-of v0, p0, Ljava/net/Inet6Address;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 361
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 362
    new-array v3, v6, [I

    move v0, v1

    .line 363
    :goto_1
    if-ge v0, v6, :cond_1

    .line 364
    mul-int/lit8 v4, v0, 0x2

    aget-byte v4, v2, v4

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, v2, v5

    invoke-static {v1, v1, v4, v5}, Lcom/google/common/primitives/Ints;->fromBytes(BBBB)I

    move-result v4

    aput v4, v3, v0

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 367
    :cond_1
    invoke-static {v3}, Lcom/google/common/net/InetAddresses;->compressLongestRunOfZeroes([I)V

    .line 368
    invoke-static {v3}, Lcom/google/common/net/InetAddresses;->hextetsToIPv6String([I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toUriString(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 463
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_0

    .line 464
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 466
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
