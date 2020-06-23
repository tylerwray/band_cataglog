defmodule BandCatalog.Bands do
  @moduledoc """
  The Bands context.
  """

  import Ecto.Query, warn: false
  alias BandCatalog.Repo

  alias BandCatalog.Bands.Band

  @doc """
  Returns the list of bands.

  ## Examples

      iex> list_bands()
      [%Band{}, ...]

  """
  def list_bands do
    Repo.all(Band)
  end

  @doc """
  Gets a single band.

  Raises `Ecto.NoResultsError` if the Band does not exist.

  ## Examples

      iex> get_band!(123)
      %Band{}

      iex> get_band!(456)
      ** (Ecto.NoResultsError)

  """
  def get_band!(id), do: Repo.get!(Band, id)

  @doc """
  Creates a band.

  ## Examples

      iex> create_band(%{field: value})
      {:ok, %Band{}}

      iex> create_band(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_band(attrs \\ %{}) do
    %Band{}
    |> Band.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a band.

  ## Examples

      iex> update_band(band, %{field: new_value})
      {:ok, %Band{}}

      iex> update_band(band, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_band(%Band{} = band, attrs) do
    band
    |> Band.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a band.

  ## Examples

      iex> delete_band(band)
      {:ok, %Band{}}

      iex> delete_band(band)
      {:error, %Ecto.Changeset{}}

  """
  def delete_band(%Band{} = band) do
    Repo.delete(band)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking band changes.

  ## Examples

      iex> change_band(band)
      %Ecto.Changeset{data: %Band{}}

  """
  def change_band(%Band{} = band, attrs \\ %{}) do
    Band.changeset(band, attrs)
  end

  alias BandCatalog.Bands.Fans

  @doc """
  Returns the list of fans.

  ## Examples

      iex> list_fans()
      [%Fans{}, ...]

  """
  def list_fans do
    Repo.all(Fans)
  end

  @doc """
  Gets a single fans.

  Raises `Ecto.NoResultsError` if the Fans does not exist.

  ## Examples

      iex> get_fans!(123)
      %Fans{}

      iex> get_fans!(456)
      ** (Ecto.NoResultsError)

  """
  def get_fans!(id), do: Repo.get!(Fans, id)

  @doc """
  Creates a fans.

  ## Examples

      iex> create_fans(%{field: value})
      {:ok, %Fans{}}

      iex> create_fans(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_fans(attrs \\ %{}) do
    %Fans{}
    |> Fans.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a fans.

  ## Examples

      iex> update_fans(fans, %{field: new_value})
      {:ok, %Fans{}}

      iex> update_fans(fans, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_fans(%Fans{} = fans, attrs) do
    fans
    |> Fans.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a fans.

  ## Examples

      iex> delete_fans(fans)
      {:ok, %Fans{}}

      iex> delete_fans(fans)
      {:error, %Ecto.Changeset{}}

  """
  def delete_fans(%Fans{} = fans) do
    Repo.delete(fans)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking fans changes.

  ## Examples

      iex> change_fans(fans)
      %Ecto.Changeset{data: %Fans{}}

  """
  def change_fans(%Fans{} = fans, attrs \\ %{}) do
    Fans.changeset(fans, attrs)
  end

  alias BandCatalog.Bands.Album

  @doc """
  Returns the list of albums.

  ## Examples

      iex> list_albums()
      [%Album{}, ...]

  """
  def list_albums do
    Repo.all(Album)
  end

  @doc """
  Gets a single album.

  Raises `Ecto.NoResultsError` if the Album does not exist.

  ## Examples

      iex> get_album!(123)
      %Album{}

      iex> get_album!(456)
      ** (Ecto.NoResultsError)

  """
  def get_album!(id), do: Repo.get!(Album, id)

  @doc """
  Creates a album.

  ## Examples

      iex> create_album(%{field: value})
      {:ok, %Album{}}

      iex> create_album(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_album(attrs \\ %{}) do
    %Album{}
    |> Album.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a album.

  ## Examples

      iex> update_album(album, %{field: new_value})
      {:ok, %Album{}}

      iex> update_album(album, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_album(%Album{} = album, attrs) do
    album
    |> Album.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a album.

  ## Examples

      iex> delete_album(album)
      {:ok, %Album{}}

      iex> delete_album(album)
      {:error, %Ecto.Changeset{}}

  """
  def delete_album(%Album{} = album) do
    Repo.delete(album)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking album changes.

  ## Examples

      iex> change_album(album)
      %Ecto.Changeset{data: %Album{}}

  """
  def change_album(%Album{} = album, attrs \\ %{}) do
    Album.changeset(album, attrs)
  end

  alias BandCatalog.Bands.Tyler

  @doc """
  Returns the list of tylers.

  ## Examples

      iex> list_tylers()
      [%Tyler{}, ...]

  """
  def list_tylers do
    Repo.all(Tyler)
  end

  @doc """
  Gets a single tyler.

  Raises `Ecto.NoResultsError` if the Tyler does not exist.

  ## Examples

      iex> get_tyler!(123)
      %Tyler{}

      iex> get_tyler!(456)
      ** (Ecto.NoResultsError)

  """
  def get_tyler!(id), do: Repo.get!(Tyler, id)

  @doc """
  Creates a tyler.

  ## Examples

      iex> create_tyler(%{field: value})
      {:ok, %Tyler{}}

      iex> create_tyler(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_tyler(attrs \\ %{}) do
    %Tyler{}
    |> Tyler.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a tyler.

  ## Examples

      iex> update_tyler(tyler, %{field: new_value})
      {:ok, %Tyler{}}

      iex> update_tyler(tyler, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_tyler(%Tyler{} = tyler, attrs) do
    tyler
    |> Tyler.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a tyler.

  ## Examples

      iex> delete_tyler(tyler)
      {:ok, %Tyler{}}

      iex> delete_tyler(tyler)
      {:error, %Ecto.Changeset{}}

  """
  def delete_tyler(%Tyler{} = tyler) do
    Repo.delete(tyler)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking tyler changes.

  ## Examples

      iex> change_tyler(tyler)
      %Ecto.Changeset{data: %Tyler{}}

  """
  def change_tyler(%Tyler{} = tyler, attrs \\ %{}) do
    Tyler.changeset(tyler, attrs)
  end
end
