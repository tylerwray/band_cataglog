defmodule BandCatalog.BandsTest do
  use BandCatalog.DataCase

  alias BandCatalog.Bands

  describe "bands" do
    alias BandCatalog.Bands.Band

    @valid_attrs %{genre: "some genre", name: "some name"}
    @update_attrs %{genre: "some updated genre", name: "some updated name"}
    @invalid_attrs %{genre: nil, name: nil}

    def band_fixture(attrs \\ %{}) do
      {:ok, band} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Bands.create_band()

      band
    end

    test "list_bands/0 returns all bands" do
      band = band_fixture()
      assert Bands.list_bands() == [band]
    end

    test "get_band!/1 returns the band with given id" do
      band = band_fixture()
      assert Bands.get_band!(band.id) == band
    end

    test "create_band/1 with valid data creates a band" do
      assert {:ok, %Band{} = band} = Bands.create_band(@valid_attrs)
      assert band.genre == "some genre"
      assert band.name == "some name"
    end

    test "create_band/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Bands.create_band(@invalid_attrs)
    end

    test "update_band/2 with valid data updates the band" do
      band = band_fixture()
      assert {:ok, %Band{} = band} = Bands.update_band(band, @update_attrs)
      assert band.genre == "some updated genre"
      assert band.name == "some updated name"
    end

    test "update_band/2 with invalid data returns error changeset" do
      band = band_fixture()
      assert {:error, %Ecto.Changeset{}} = Bands.update_band(band, @invalid_attrs)
      assert band == Bands.get_band!(band.id)
    end

    test "delete_band/1 deletes the band" do
      band = band_fixture()
      assert {:ok, %Band{}} = Bands.delete_band(band)
      assert_raise Ecto.NoResultsError, fn -> Bands.get_band!(band.id) end
    end

    test "change_band/1 returns a band changeset" do
      band = band_fixture()
      assert %Ecto.Changeset{} = Bands.change_band(band)
    end
  end

  describe "fans" do
    alias BandCatalog.Bands.Fans

    @valid_attrs %{name: "some name"}
    @update_attrs %{name: "some updated name"}
    @invalid_attrs %{name: nil}

    def fans_fixture(attrs \\ %{}) do
      {:ok, fans} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Bands.create_fans()

      fans
    end

    test "list_fans/0 returns all fans" do
      fans = fans_fixture()
      assert Bands.list_fans() == [fans]
    end

    test "get_fans!/1 returns the fans with given id" do
      fans = fans_fixture()
      assert Bands.get_fans!(fans.id) == fans
    end

    test "create_fans/1 with valid data creates a fans" do
      assert {:ok, %Fans{} = fans} = Bands.create_fans(@valid_attrs)
      assert fans.name == "some name"
    end

    test "create_fans/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Bands.create_fans(@invalid_attrs)
    end

    test "update_fans/2 with valid data updates the fans" do
      fans = fans_fixture()
      assert {:ok, %Fans{} = fans} = Bands.update_fans(fans, @update_attrs)
      assert fans.name == "some updated name"
    end

    test "update_fans/2 with invalid data returns error changeset" do
      fans = fans_fixture()
      assert {:error, %Ecto.Changeset{}} = Bands.update_fans(fans, @invalid_attrs)
      assert fans == Bands.get_fans!(fans.id)
    end

    test "delete_fans/1 deletes the fans" do
      fans = fans_fixture()
      assert {:ok, %Fans{}} = Bands.delete_fans(fans)
      assert_raise Ecto.NoResultsError, fn -> Bands.get_fans!(fans.id) end
    end

    test "change_fans/1 returns a fans changeset" do
      fans = fans_fixture()
      assert %Ecto.Changeset{} = Bands.change_fans(fans)
    end
  end

  describe "albums" do
    alias BandCatalog.Bands.Album

    @valid_attrs %{name: "some name", release_date: ~N[2010-04-17 14:00:00]}
    @update_attrs %{name: "some updated name", release_date: ~N[2011-05-18 15:01:01]}
    @invalid_attrs %{name: nil, release_date: nil}

    def album_fixture(attrs \\ %{}) do
      {:ok, album} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Bands.create_album()

      album
    end

    test "list_albums/0 returns all albums" do
      album = album_fixture()
      assert Bands.list_albums() == [album]
    end

    test "get_album!/1 returns the album with given id" do
      album = album_fixture()
      assert Bands.get_album!(album.id) == album
    end

    test "create_album/1 with valid data creates a album" do
      assert {:ok, %Album{} = album} = Bands.create_album(@valid_attrs)
      assert album.name == "some name"
      assert album.release_date == ~N[2010-04-17 14:00:00]
    end

    test "create_album/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Bands.create_album(@invalid_attrs)
    end

    test "update_album/2 with valid data updates the album" do
      album = album_fixture()
      assert {:ok, %Album{} = album} = Bands.update_album(album, @update_attrs)
      assert album.name == "some updated name"
      assert album.release_date == ~N[2011-05-18 15:01:01]
    end

    test "update_album/2 with invalid data returns error changeset" do
      album = album_fixture()
      assert {:error, %Ecto.Changeset{}} = Bands.update_album(album, @invalid_attrs)
      assert album == Bands.get_album!(album.id)
    end

    test "delete_album/1 deletes the album" do
      album = album_fixture()
      assert {:ok, %Album{}} = Bands.delete_album(album)
      assert_raise Ecto.NoResultsError, fn -> Bands.get_album!(album.id) end
    end

    test "change_album/1 returns a album changeset" do
      album = album_fixture()
      assert %Ecto.Changeset{} = Bands.change_album(album)
    end
  end

  describe "tylers" do
    alias BandCatalog.Bands.Tyler

    @valid_attrs %{name: "some name", release_date: ~N[2010-04-17 14:00:00]}
    @update_attrs %{name: "some updated name", release_date: ~N[2011-05-18 15:01:01]}
    @invalid_attrs %{name: nil, release_date: nil}

    def tyler_fixture(attrs \\ %{}) do
      {:ok, tyler} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Bands.create_tyler()

      tyler
    end

    test "list_tylers/0 returns all tylers" do
      tyler = tyler_fixture()
      assert Bands.list_tylers() == [tyler]
    end

    test "get_tyler!/1 returns the tyler with given id" do
      tyler = tyler_fixture()
      assert Bands.get_tyler!(tyler.id) == tyler
    end

    test "create_tyler/1 with valid data creates a tyler" do
      assert {:ok, %Tyler{} = tyler} = Bands.create_tyler(@valid_attrs)
      assert tyler.name == "some name"
      assert tyler.release_date == ~N[2010-04-17 14:00:00]
    end

    test "create_tyler/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Bands.create_tyler(@invalid_attrs)
    end

    test "update_tyler/2 with valid data updates the tyler" do
      tyler = tyler_fixture()
      assert {:ok, %Tyler{} = tyler} = Bands.update_tyler(tyler, @update_attrs)
      assert tyler.name == "some updated name"
      assert tyler.release_date == ~N[2011-05-18 15:01:01]
    end

    test "update_tyler/2 with invalid data returns error changeset" do
      tyler = tyler_fixture()
      assert {:error, %Ecto.Changeset{}} = Bands.update_tyler(tyler, @invalid_attrs)
      assert tyler == Bands.get_tyler!(tyler.id)
    end

    test "delete_tyler/1 deletes the tyler" do
      tyler = tyler_fixture()
      assert {:ok, %Tyler{}} = Bands.delete_tyler(tyler)
      assert_raise Ecto.NoResultsError, fn -> Bands.get_tyler!(tyler.id) end
    end

    test "change_tyler/1 returns a tyler changeset" do
      tyler = tyler_fixture()
      assert %Ecto.Changeset{} = Bands.change_tyler(tyler)
    end
  end
end
