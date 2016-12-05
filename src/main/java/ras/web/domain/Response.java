package ras.web.domain;


public class Response<T>
{
	public static final int ERROR = -1;
	public static final int SUCCESS = 0;
	// Meta data

	private int status;
	private String message;
	private T data;

	public Response()
	{
	}

	public Response( int status )
	{
		this.status = status;
	}

	public Response( int status, String message )
	{
		this.status = status;
		this.message = message;
	}

	public T getData()
	{
		return data;
	}

	public void setData( T data )
	{
		this.data = data;
	}

	public String getMessage()
	{
		return message;
	}

	public void setMessage( String message )
	{
		this.message = message;
	}

	public int getStatus()
	{
		return status;
	}

	public void setStatus( int status )
	{
		this.status = status;
	}
}
