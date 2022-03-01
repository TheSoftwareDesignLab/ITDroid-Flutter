.class public Lau/com/bytecode/opencsv/CSVWriter;
.super Ljava/lang/Object;


# static fields
.field private static final DATE_FORMATTER:Ljava/text/SimpleDateFormat;

.field public static final DEFAULT_ESCAPE_CHARACTER:C = '\"'

.field public static final DEFAULT_LINE_END:Ljava/lang/String; = "\n"

.field public static final DEFAULT_QUOTE_CHARACTER:C = '\"'

.field public static final DEFAULT_SEPARATOR:C = ','

.field public static final NO_ESCAPE_CHARACTER:C

.field public static final NO_QUOTE_CHARACTER:C

.field private static final TIMESTAMP_FORMATTER:Ljava/text/SimpleDateFormat;


# instance fields
.field private escapechar:C

.field private lineEnd:Ljava/lang/String;

.field private pw:Ljava/io/PrintWriter;

.field private quotechar:C

.field private rawWriter:Ljava/io/Writer;

.field private separator:C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MMM-yyyy HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lau/com/bytecode/opencsv/CSVWriter;->TIMESTAMP_FORMATTER:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MMM-yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lau/com/bytecode/opencsv/CSVWriter;->DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    const/16 v0, 0x2c

    invoke-direct {p0, p1, v0}, Lau/com/bytecode/opencsv/CSVWriter;-><init>(Ljava/io/Writer;C)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;C)V
    .locals 1

    const/16 v0, 0x22

    invoke-direct {p0, p1, p2, v0}, Lau/com/bytecode/opencsv/CSVWriter;-><init>(Ljava/io/Writer;CC)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;CC)V
    .locals 1

    const/16 v0, 0x22

    invoke-direct {p0, p1, p2, p3, v0}, Lau/com/bytecode/opencsv/CSVWriter;-><init>(Ljava/io/Writer;CCC)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;CCC)V
    .locals 6

    const-string v5, "\n"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lau/com/bytecode/opencsv/CSVWriter;-><init>(Ljava/io/Writer;CCCLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;CCCLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lau/com/bytecode/opencsv/CSVWriter;->rawWriter:Ljava/io/Writer;

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lau/com/bytecode/opencsv/CSVWriter;->pw:Ljava/io/PrintWriter;

    iput-char p2, p0, Lau/com/bytecode/opencsv/CSVWriter;->separator:C

    iput-char p3, p0, Lau/com/bytecode/opencsv/CSVWriter;->quotechar:C

    iput-char p4, p0, Lau/com/bytecode/opencsv/CSVWriter;->escapechar:C

    iput-object p5, p0, Lau/com/bytecode/opencsv/CSVWriter;->lineEnd:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;CCLjava/lang/String;)V
    .locals 6

    const/16 v4, 0x22

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lau/com/bytecode/opencsv/CSVWriter;-><init>(Ljava/io/Writer;CCCLjava/lang/String;)V

    return-void
.end method

.method private static getColumnValue(Ljava/sql/ResultSet;II)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    sparse-switch p1, :sswitch_data_0

    const-string v0, ""

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0

    :sswitch_0
    invoke-interface {p0, p2}, Ljava/sql/ResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    invoke-interface {p0, p2}, Ljava/sql/ResultSet;->getBoolean(I)Z

    move-result v1

    invoke-interface {p0}, Ljava/sql/ResultSet;->wasNull()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    invoke-interface {p0, p2}, Ljava/sql/ResultSet;->getClob(I)Ljava/sql/Clob;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lau/com/bytecode/opencsv/CSVWriter;->read(Ljava/sql/Clob;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    invoke-interface {p0, p2}, Ljava/sql/ResultSet;->getBigDecimal(I)Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    invoke-interface {p0, p2}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v1

    invoke-interface {p0}, Ljava/sql/ResultSet;->wasNull()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    invoke-interface {p0, p2}, Ljava/sql/ResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    invoke-interface {p0, p2}, Ljava/sql/ResultSet;->getDate(I)Ljava/sql/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v0, Lau/com/bytecode/opencsv/CSVWriter;->DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_7
    invoke-interface {p0, p2}, Ljava/sql/ResultSet;->getTime(I)Ljava/sql/Time;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/sql/Time;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_8
    invoke-interface {p0, p2}, Ljava/sql/ResultSet;->getTimestamp(I)Ljava/sql/Timestamp;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v0, Lau/com/bytecode/opencsv/CSVWriter;->TIMESTAMP_FORMATTER:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_9
    invoke-interface {p0, p2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x7 -> :sswitch_0
        -0x6 -> :sswitch_4
        -0x5 -> :sswitch_3
        -0x1 -> :sswitch_9
        0x1 -> :sswitch_9
        0x2 -> :sswitch_3
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_4
        0x6 -> :sswitch_3
        0x7 -> :sswitch_3
        0x8 -> :sswitch_3
        0xc -> :sswitch_9
        0x10 -> :sswitch_1
        0x5b -> :sswitch_6
        0x5c -> :sswitch_7
        0x5d -> :sswitch_8
        0x7d0 -> :sswitch_5
        0x7d5 -> :sswitch_2
    .end sparse-switch
.end method

.method private static read(Ljava/sql/Clob;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-interface {p0}, Ljava/sql/Clob;->length()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-interface {p0}, Ljava/sql/Clob;->getCharacterStream()Ljava/io/Reader;

    move-result-object v1

    const/16 v2, 0x800

    new-array v2, v2, [C

    :cond_0
    :goto_0
    array-length v3, v2

    invoke-virtual {v1, v2, v5, v3}, Ljava/io/Reader;->read([CII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    if-lez v3, :cond_0

    invoke-virtual {v0, v2, v5, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lau/com/bytecode/opencsv/CSVWriter;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    iget-object v0, p0, Lau/com/bytecode/opencsv/CSVWriter;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    iget-object v0, p0, Lau/com/bytecode/opencsv/CSVWriter;->rawWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lau/com/bytecode/opencsv/CSVWriter;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public writeAll(Ljava/sql/ResultSet;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v1

    if-eqz p2, :cond_0

    invoke-virtual {p0, v1}, Lau/com/bytecode/opencsv/CSVWriter;->writeColumnNames(Ljava/sql/ResultSetMetaData;)V

    :cond_0
    invoke-interface {v1}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v2

    :goto_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v1, v4}, Ljava/sql/ResultSetMetaData;->getColumnType(I)I

    move-result v4

    add-int/lit8 v5, v0, 0x1

    invoke-static {p1, v4, v5}, Lau/com/bytecode/opencsv/CSVWriter;->getColumnValue(Ljava/sql/ResultSet;II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v3}, Lau/com/bytecode/opencsv/CSVWriter;->writeNext([Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public writeAll(Ljava/util/List;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lau/com/bytecode/opencsv/CSVWriter;->writeNext([Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected writeColumnNames(Ljava/sql/ResultSetMetaData;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p1, v3}, Ljava/sql/ResultSetMetaData;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lau/com/bytecode/opencsv/CSVWriter;->writeNext([Ljava/lang/String;)V

    return-void
.end method

.method public writeNext([Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v1

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_8

    if-eqz v0, :cond_1

    iget-char v2, p0, Lau/com/bytecode/opencsv/CSVWriter;->separator:C

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    aget-object v4, p1, v0

    if-nez v4, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-char v2, p0, Lau/com/bytecode/opencsv/CSVWriter;->quotechar:C

    if-eqz v2, :cond_4

    iget-char v2, p0, Lau/com/bytecode/opencsv/CSVWriter;->quotechar:C

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    move v2, v1

    :goto_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_7

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iget-char v6, p0, Lau/com/bytecode/opencsv/CSVWriter;->escapechar:C

    if-eqz v6, :cond_5

    iget-char v6, p0, Lau/com/bytecode/opencsv/CSVWriter;->quotechar:C

    if-ne v5, v6, :cond_5

    iget-char v6, p0, Lau/com/bytecode/opencsv/CSVWriter;->escapechar:C

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    iget-char v6, p0, Lau/com/bytecode/opencsv/CSVWriter;->escapechar:C

    if-eqz v6, :cond_6

    iget-char v6, p0, Lau/com/bytecode/opencsv/CSVWriter;->escapechar:C

    if-ne v5, v6, :cond_6

    iget-char v6, p0, Lau/com/bytecode/opencsv/CSVWriter;->escapechar:C

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_6
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_7
    iget-char v2, p0, Lau/com/bytecode/opencsv/CSVWriter;->quotechar:C

    if-eqz v2, :cond_2

    iget-char v2, p0, Lau/com/bytecode/opencsv/CSVWriter;->quotechar:C

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lau/com/bytecode/opencsv/CSVWriter;->lineEnd:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lau/com/bytecode/opencsv/CSVWriter;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method
