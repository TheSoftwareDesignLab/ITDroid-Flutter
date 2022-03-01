.class public final Lcom/artfulbits/license/LicenseData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artfulbits/license/LicenseData$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:J

.field private final e:J


# direct methods
.method private constructor <init>([B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/artfulbits/license/LicenseData$a;

    invoke-direct {v0, p1}, Lcom/artfulbits/license/LicenseData$a;-><init>([B)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/artfulbits/license/LicenseData$a;->a(I)V

    invoke-virtual {v0}, Lcom/artfulbits/license/LicenseData$a;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/artfulbits/license/LicenseData;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/artfulbits/license/LicenseData$a;->b()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/artfulbits/license/LicenseData;->d:J

    invoke-virtual {v0}, Lcom/artfulbits/license/LicenseData$a;->b()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/artfulbits/license/LicenseData;->e:J

    invoke-virtual {v0}, Lcom/artfulbits/license/LicenseData$a;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/artfulbits/license/LicenseData;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/artfulbits/license/LicenseData$a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/artfulbits/license/LicenseData;->c:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_3

    const/16 v0, 0x200

    new-array v0, v0, [B

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    :goto_1
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Ljava/math/BigInteger;

    const/16 v2, 0xa

    invoke-direct {v1, v0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    :cond_0
    return-object v1

    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "US-ASCII"

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_3
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_3

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method private static b(Ljava/lang/Class;Ljava/lang/String;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v3, 0x80

    new-array v3, v3, [B

    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static fromPackage(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[B[B)Lcom/artfulbits/license/LicenseData;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B[B)",
            "Lcom/artfulbits/license/LicenseData;"
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1}, Lcom/artfulbits/license/LicenseData;->b(Ljava/lang/Class;Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {p0, p2}, Lcom/artfulbits/license/LicenseData;->a(Ljava/lang/Class;Ljava/lang/String;)[B

    move-result-object v0

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_2

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v9, p3}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v9, p4}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    array-length v0, v2

    invoke-direct {v5, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v6, v0, 0x8

    move v0, v1

    :goto_1
    array-length v7, v2

    if-ge v0, v7, :cond_1

    array-length v7, v2

    sub-int/2addr v7, v0

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    new-array v7, v7, [B

    array-length v8, v7

    invoke-static {v2, v0, v7, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v8, Ljava/math/BigInteger;

    invoke-direct {v8, v9, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v8, v3, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    aget-byte v8, v7, v1

    if-nez v8, :cond_0

    array-length v8, v7

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v5, v7, v9, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_2
    add-int/2addr v0, v6

    goto :goto_1

    :cond_0
    array-length v8, v7

    invoke-virtual {v5, v7, v1, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    :cond_1
    new-instance v0, Lcom/artfulbits/license/LicenseData;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/artfulbits/license/LicenseData;-><init>([B)V

    :goto_3
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    move-object v2, v0

    goto :goto_0
.end method


# virtual methods
.method public final getCreationDate()Ljava/util/Date;
    .locals 3

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/artfulbits/license/LicenseData;->d:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public final getExpirationDate()Ljava/util/Date;
    .locals 3

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/artfulbits/license/LicenseData;->e:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public final getLicenceType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/license/LicenseData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getReserved()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/license/LicenseData;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/license/LicenseData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/artfulbits/license/LicenseData;->d:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/artfulbits/license/LicenseData;->e:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/license/LicenseData;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/license/LicenseData;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isExpired()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/artfulbits/license/LicenseData;->e:J

    cmp-long v2, v2, v0

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/artfulbits/license/LicenseData;->d:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isValid()Z
    .locals 5

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/artfulbits/license/LicenseData;->d:J

    iget-wide v3, p0, Lcom/artfulbits/license/LicenseData;->e:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/artfulbits/license/LicenseData;->isExpired()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/artfulbits/license/LicenseData;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/artfulbits/license/LicenseData;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/artfulbits/license/LicenseData;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/artfulbits/license/LicenseData;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/artfulbits/license/LicenseData;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
