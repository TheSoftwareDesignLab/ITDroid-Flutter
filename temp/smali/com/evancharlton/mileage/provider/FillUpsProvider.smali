.class public Lcom/evancharlton/mileage/provider/FillUpsProvider;
.super Landroid/content/ContentProvider;
.source "FillUpsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evancharlton/mileage/provider/FillUpsProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.evancharlton.mileage"

.field public static final BASE_URI:Landroid/net/Uri;

.field public static final DATABASE_NAME:Ljava/lang/String; = "mileage.db"

.field public static final DATABASE_VERSION:I = 0x6

.field private static final LOOKUP:Landroid/util/SparseIntArray;

.field public static final TABLES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/evancharlton/mileage/provider/tables/ContentTable;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "FillupsProvider"

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mDatabaseHelper:Lcom/evancharlton/mileage/provider/FillUpsProvider$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 59
    const-string v2, "content://com.evancharlton.mileage"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/evancharlton/mileage/provider/FillUpsProvider;->BASE_URI:Landroid/net/Uri;

    .line 63
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/evancharlton/mileage/provider/FillUpsProvider;->TABLES:Ljava/util/ArrayList;

    .line 65
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v2, Lcom/evancharlton/mileage/provider/FillUpsProvider;->LOOKUP:Landroid/util/SparseIntArray;

    .line 69
    new-instance v2, Landroid/content/UriMatcher;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v2, Lcom/evancharlton/mileage/provider/FillUpsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 76
    sget-object v2, Lcom/evancharlton/mileage/provider/FillUpsProvider;->TABLES:Ljava/util/ArrayList;

    new-instance v3, Lcom/evancharlton/mileage/provider/tables/FillupsTable;

    invoke-direct {v3}, Lcom/evancharlton/mileage/provider/tables/FillupsTable;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v2, Lcom/evancharlton/mileage/provider/FillUpsProvider;->TABLES:Ljava/util/ArrayList;

    new-instance v3, Lcom/evancharlton/mileage/provider/tables/FillupsFieldsTable;

    invoke-direct {v3}, Lcom/evancharlton/mileage/provider/tables/FillupsFieldsTable;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v2, Lcom/evancharlton/mileage/provider/FillUpsProvider;->TABLES:Ljava/util/ArrayList;

    new-instance v3, Lcom/evancharlton/mileage/provider/tables/FieldsTable;

    invoke-direct {v3}, Lcom/evancharlton/mileage/provider/tables/FieldsTable;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v2, Lcom/evancharlton/mileage/provider/FillUpsProvider;->TABLES:Ljava/util/ArrayList;

    new-instance v3, Lcom/evancharlton/mileage/provider/tables/VehiclesTable;

    invoke-direct {v3}, Lcom/evancharlton/mileage/provider/tables/VehiclesTable;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v2, Lcom/evancharlton/mileage/provider/FillUpsProvider;->TABLES:Ljava/util/ArrayList;

    new-instance v3, Lcom/evancharlton/mileage/provider/tables/VehicleTypesTable;

    invoke-direct {v3}, Lcom/evancharlton/mileage/provider/tables/VehicleTypesTable;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v2, Lcom/evancharlton/mileage/provider/FillUpsProvider;->TABLES:Ljava/util/ArrayList;

    new-instance v3, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalsTable;

    invoke-direct {v3}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalsTable;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v2, Lcom/evancharlton/mileage/provider/FillUpsProvider;->TABLES:Ljava/util/ArrayList;

    new-instance v3, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;

    invoke-direct {v3}, Lcom/evancharlton/mileage/provider/tables/ServiceIntervalTemplatesTable;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v2, Lcom/evancharlton/mileage/provider/FillUpsProvider;->TABLES:Ljava/util/ArrayList;

    new-instance v3, Lcom/evancharlton/mileage/provider/tables/CacheTable;

    invoke-direct {v3}, Lcom/evancharlton/mileage/provider/tables/CacheTable;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v2, Lcom/evancharlton/mileage/provider/FillUpsProvider;->TABLES:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evancharlton/mileage/provider/tables/ContentTable;

    .line 86
    .local v1, "table":Lcom/evancharlton/mileage/provider/tables/ContentTable;
    invoke-virtual {v1}, Lcom/evancharlton/mileage/provider/tables/ContentTable;->registerUris()V

    goto :goto_0

    .line 88
    .end local v1    # "table":Lcom/evancharlton/mileage/provider/tables/ContentTable;
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 101
    return-void
.end method

.method public static initTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 132
    sget-object v7, Lcom/evancharlton/mileage/provider/FillUpsProvider;->TABLES:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/evancharlton/mileage/provider/tables/ContentTable;

    .line 133
    .local v6, "table":Lcom/evancharlton/mileage/provider/tables/ContentTable;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/evancharlton/mileage/provider/tables/ContentTable;->init(Z)[Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "init":[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 135
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 136
    .local v5, "sql":Ljava/lang/String;
    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 140
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "init":[Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v5    # "sql":Ljava/lang/String;
    .end local v6    # "table":Lcom/evancharlton/mileage/provider/tables/ContentTable;
    :cond_1
    return-void
.end method

.method private notifyListeners(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/FillUpsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 268
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 270
    invoke-static {v0}, Lcom/evancharlton/mileage/services/AutomaticBackupService;->run(Landroid/content/Context;)V

    .line 271
    return-void
.end method

.method public static registerUri(Lcom/evancharlton/mileage/provider/tables/ContentTable;Ljava/lang/String;I)V
    .locals 3
    .param p0, "table"    # Lcom/evancharlton/mileage/provider/tables/ContentTable;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "code"    # I

    .prologue
    .line 92
    sget-object v1, Lcom/evancharlton/mileage/provider/FillUpsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "com.evancharlton.mileage"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 93
    sget-object v1, Lcom/evancharlton/mileage/provider/FillUpsProvider;->TABLES:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 94
    .local v0, "position":I
    if-gez v0, :cond_0

    .line 95
    sget-object v1, Lcom/evancharlton/mileage/provider/FillUpsProvider;->TABLES:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v1, Lcom/evancharlton/mileage/provider/FillUpsProvider;->TABLES:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 98
    :cond_0
    sget-object v1, Lcom/evancharlton/mileage/provider/FillUpsProvider;->LOOKUP:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 99
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/FillUpsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/evancharlton/mileage/util/Debugger;->checkQueryOnUiThread(Landroid/content/Context;)V

    .line 152
    iget-object v4, p0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->mDatabaseHelper:Lcom/evancharlton/mileage/provider/FillUpsProvider$DatabaseHelper;

    invoke-virtual {v4}, Lcom/evancharlton/mileage/provider/FillUpsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 154
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, -0x1

    .line 155
    .local v0, "count":I
    sget-object v4, Lcom/evancharlton/mileage/provider/FillUpsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 156
    .local v3, "type":I
    sget-object v4, Lcom/evancharlton/mileage/provider/FillUpsProvider;->LOOKUP:Landroid/util/SparseIntArray;

    const/4 v5, -0x1

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 157
    .local v2, "position":I
    if-ltz v2, :cond_0

    .line 158
    sget-object v4, Lcom/evancharlton/mileage/provider/FillUpsProvider;->TABLES:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/evancharlton/mileage/provider/tables/ContentTable;

    invoke-virtual {v4, v1, p1, p2, p3}, Lcom/evancharlton/mileage/provider/tables/ContentTable;->delete(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 161
    :cond_0
    if-gez v0, :cond_1

    .line 162
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 165
    :cond_1
    invoke-direct {p0, p1}, Lcom/evancharlton/mileage/provider/FillUpsProvider;->notifyListeners(Landroid/net/Uri;)V

    .line 166
    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 171
    sget-object v4, Lcom/evancharlton/mileage/provider/FillUpsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 172
    .local v3, "type":I
    if-nez v3, :cond_0

    .line 177
    const/4 v1, 0x0

    .line 183
    :goto_0
    return-object v1

    .line 179
    :cond_0
    const/4 v1, 0x0

    .line 180
    .local v1, "result":Ljava/lang/String;
    sget-object v4, Lcom/evancharlton/mileage/provider/FillUpsProvider;->TABLES:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evancharlton/mileage/provider/tables/ContentTable;

    .line 181
    .local v2, "table":Lcom/evancharlton/mileage/provider/tables/ContentTable;
    invoke-virtual {v2, v3}, Lcom/evancharlton/mileage/provider/tables/ContentTable;->getType(I)Ljava/lang/String;

    move-result-object v1

    .line 182
    if-eqz v1, :cond_1

    goto :goto_0

    .line 186
    .end local v2    # "table":Lcom/evancharlton/mileage/provider/tables/ContentTable;
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/FillUpsProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/evancharlton/mileage/util/Debugger;->checkQueryOnUiThread(Landroid/content/Context;)V

    .line 192
    sget-object v5, Lcom/evancharlton/mileage/provider/FillUpsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 193
    .local v1, "match":I
    const-wide/16 v2, -0x1

    .line 194
    .local v2, "newId":J
    iget-object v5, p0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->mDatabaseHelper:Lcom/evancharlton/mileage/provider/FillUpsProvider$DatabaseHelper;

    invoke-virtual {v5}, Lcom/evancharlton/mileage/provider/FillUpsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 195
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v5, Lcom/evancharlton/mileage/provider/FillUpsProvider;->LOOKUP:Landroid/util/SparseIntArray;

    const/4 v6, -0x1

    invoke-virtual {v5, v1, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 196
    .local v4, "position":I
    if-ltz v4, :cond_1

    .line 197
    sget-object v5, Lcom/evancharlton/mileage/provider/FillUpsProvider;->TABLES:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/evancharlton/mileage/provider/tables/ContentTable;

    invoke-virtual {v5, v1, v0, p2}, Lcom/evancharlton/mileage/provider/tables/ContentTable;->insert(ILandroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 198
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-ltz v5, :cond_0

    .line 199
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 200
    invoke-direct {p0, p1}, Lcom/evancharlton/mileage/provider/FillUpsProvider;->notifyListeners(Landroid/net/Uri;)V

    .line 202
    :cond_0
    return-object p1

    .line 204
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public onCreate()Z
    .locals 4

    .prologue
    .line 144
    new-instance v0, Lcom/evancharlton/mileage/provider/FillUpsProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/FillUpsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/evancharlton/mileage/provider/FillUpsProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->mDatabaseHelper:Lcom/evancharlton/mileage/provider/FillUpsProvider$DatabaseHelper;

    .line 145
    sget-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.evancharlton.mileage"

    const-string v2, "reset/"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 146
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 17
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/evancharlton/mileage/provider/FillUpsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/evancharlton/mileage/util/Debugger;->checkQueryOnUiThread(Landroid/content/Context;)V

    .line 211
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 212
    .local v4, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v3, Lcom/evancharlton/mileage/provider/FillUpsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 213
    .local v2, "match":I
    const/4 v13, 0x0

    .line 214
    .local v13, "changed":Z
    const/16 v16, 0x0

    .line 215
    .local v16, "queryTable":Lcom/evancharlton/mileage/provider/tables/ContentTable;
    sget-object v3, Lcom/evancharlton/mileage/provider/FillUpsProvider;->LOOKUP:Landroid/util/SparseIntArray;

    const/4 v6, -0x1

    invoke-virtual {v3, v2, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v15

    .line 216
    .local v15, "position":I
    if-ltz v15, :cond_0

    .line 217
    sget-object v3, Lcom/evancharlton/mileage/provider/FillUpsProvider;->TABLES:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evancharlton/mileage/provider/tables/ContentTable;

    .line 218
    .local v1, "table":Lcom/evancharlton/mileage/provider/tables/ContentTable;
    invoke-virtual/range {p0 .. p0}, Lcom/evancharlton/mileage/provider/FillUpsProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/evancharlton/mileage/provider/tables/ContentTable;->query(ILandroid/net/Uri;Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v13

    .line 219
    if-eqz v13, :cond_0

    .line 220
    move-object/from16 v16, v1

    .line 225
    .end local v1    # "table":Lcom/evancharlton/mileage/provider/tables/ContentTable;
    :cond_0
    if-nez v13, :cond_1

    .line 226
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 229
    :cond_1
    if-nez p2, :cond_2

    .line 230
    invoke-virtual/range {v16 .. v16}, Lcom/evancharlton/mileage/provider/tables/ContentTable;->getProjection()[Ljava/lang/String;

    move-result-object p2

    .line 233
    :cond_2
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual/range {v16 .. v16}, Lcom/evancharlton/mileage/provider/tables/ContentTable;->getDefaultSortOrder()Ljava/lang/String;

    move-result-object v11

    .line 238
    .local v11, "orderBy":Ljava/lang/String;
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->mDatabaseHelper:Lcom/evancharlton/mileage/provider/FillUpsProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/evancharlton/mileage/provider/FillUpsProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 243
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_1
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 244
    .local v12, "c":Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/evancharlton/mileage/provider/FillUpsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v12, v3, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 246
    return-object v12

    .end local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v11    # "orderBy":Ljava/lang/String;
    .end local v12    # "c":Landroid/database/Cursor;
    :cond_3
    move-object/from16 v11, p5

    .line 233
    goto :goto_0

    .line 239
    .restart local v11    # "orderBy":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 240
    .local v14, "e":Landroid/database/sqlite/SQLiteException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->mDatabaseHelper:Lcom/evancharlton/mileage/provider/FillUpsProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/evancharlton/mileage/provider/FillUpsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .restart local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    goto :goto_1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/evancharlton/mileage/provider/FillUpsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/evancharlton/mileage/util/Debugger;->checkQueryOnUiThread(Landroid/content/Context;)V

    .line 252
    sget-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 253
    .local v1, "match":I
    sget-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->LOOKUP:Landroid/util/SparseIntArray;

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    .line 254
    .local v8, "position":I
    if-ltz v8, :cond_1

    .line 255
    iget-object v0, p0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->mDatabaseHelper:Lcom/evancharlton/mileage/provider/FillUpsProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/provider/FillUpsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 256
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->TABLES:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/provider/tables/ContentTable;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/evancharlton/mileage/provider/tables/ContentTable;->update(ILandroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 258
    .local v7, "count":I
    if-ltz v7, :cond_0

    .line 259
    invoke-direct {p0, p1}, Lcom/evancharlton/mileage/provider/FillUpsProvider;->notifyListeners(Landroid/net/Uri;)V

    .line 261
    :cond_0
    return v7

    .line 263
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v7    # "count":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
