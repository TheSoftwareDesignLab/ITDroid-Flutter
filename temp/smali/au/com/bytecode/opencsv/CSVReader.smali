.class public Lau/com/bytecode/opencsv/CSVReader;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_QUOTE_CHARACTER:C = '\"'

.field public static final DEFAULT_SEPARATOR:C = ','

.field public static final DEFAULT_SKIP_LINES:I


# instance fields
.field private br:Ljava/io/BufferedReader;

.field private hasNext:Z

.field private linesSkiped:Z

.field private quotechar:C

.field private separator:C

.field private skipLines:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    const/16 v0, 0x2c

    invoke-direct {p0, p1, v0}, Lau/com/bytecode/opencsv/CSVReader;-><init>(Ljava/io/Reader;C)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;C)V
    .locals 1

    const/16 v0, 0x22

    invoke-direct {p0, p1, p2, v0}, Lau/com/bytecode/opencsv/CSVReader;-><init>(Ljava/io/Reader;CC)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;CC)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lau/com/bytecode/opencsv/CSVReader;-><init>(Ljava/io/Reader;CCI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;CCI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lau/com/bytecode/opencsv/CSVReader;->hasNext:Z

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lau/com/bytecode/opencsv/CSVReader;->br:Ljava/io/BufferedReader;

    iput-char p2, p0, Lau/com/bytecode/opencsv/CSVReader;->separator:C

    iput-char p3, p0, Lau/com/bytecode/opencsv/CSVReader;->quotechar:C

    iput p4, p0, Lau/com/bytecode/opencsv/CSVReader;->skipLines:I

    return-void
.end method

.method private getNextLine()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-boolean v0, p0, Lau/com/bytecode/opencsv/CSVReader;->linesSkiped:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iget v2, p0, Lau/com/bytecode/opencsv/CSVReader;->skipLines:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lau/com/bytecode/opencsv/CSVReader;->br:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lau/com/bytecode/opencsv/CSVReader;->linesSkiped:Z

    :cond_1
    iget-object v0, p0, Lau/com/bytecode/opencsv/CSVReader;->br:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lau/com/bytecode/opencsv/CSVReader;->hasNext:Z

    :cond_2
    iget-boolean v1, p0, Lau/com/bytecode/opencsv/CSVReader;->hasNext:Z

    if-eqz v1, :cond_3

    :goto_1
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private parseLine(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move v1, v2

    move-object v0, p1

    :goto_1
    if-eqz v1, :cond_1

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lau/com/bytecode/opencsv/CSVReader;->getNextLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v0, v2, [Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v4, v3

    move v3, v1

    move v1, v2

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_7

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iget-char v7, p0, Lau/com/bytecode/opencsv/CSVReader;->quotechar:C

    if-ne v6, v7, :cond_5

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v8, v1, 0x1

    if-le v7, v8, :cond_3

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    iget-char v8, p0, Lau/com/bytecode/opencsv/CSVReader;->quotechar:C

    if-ne v7, v8, :cond_3

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    :cond_2
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    if-nez v3, :cond_4

    const/4 v3, 0x1

    :goto_5
    const/4 v7, 0x2

    if-le v1, v7, :cond_2

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    iget-char v8, p0, Lau/com/bytecode/opencsv/CSVReader;->separator:C

    if-eq v7, v8, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v8, v1, 0x1

    if-le v7, v8, :cond_2

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    iget-char v8, p0, Lau/com/bytecode/opencsv/CSVReader;->separator:C

    if-eq v7, v8, :cond_2

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_4
    move v3, v2

    goto :goto_5

    :cond_5
    iget-char v7, p0, Lau/com/bytecode/opencsv/CSVReader;->separator:C

    if-ne v6, v7, :cond_6

    if-nez v3, :cond_6

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    goto :goto_4

    :cond_6
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_7
    if-nez v3, :cond_8

    move-object v3, v4

    goto/16 :goto_2

    :cond_8
    move v1, v3

    move-object v3, v4

    goto/16 :goto_1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lau/com/bytecode/opencsv/CSVReader;->br:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-void
.end method

.method public readAll()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lau/com/bytecode/opencsv/CSVReader;->hasNext:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lau/com/bytecode/opencsv/CSVReader;->readNext()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public readNext()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lau/com/bytecode/opencsv/CSVReader;->getNextLine()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lau/com/bytecode/opencsv/CSVReader;->hasNext:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lau/com/bytecode/opencsv/CSVReader;->parseLine(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
