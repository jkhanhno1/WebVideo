package edu.poly.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 * The persistent class for the Favorites database table.
 * 
 */
@Entity
@Table(name = "Favorites")
@NamedQuery(name = "Favorite.findAll", query = "SELECT f FROM Favorite f")
public class Favorite implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	private Date likedate;

	// bi-directional many-to-one association to User
	@ManyToOne
	@JoinColumn(name = "userid")
	private User user;

	// bi-directional many-to-one association to Video
	@ManyToOne
	@JoinColumn(name = "videoid")
	private Video video;

	public Favorite() {
	}

	public long getId() {
		return this.id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Date getLikedate() {
		return this.likedate;
	}

	public void setLikedate(Date likedate) {
		this.likedate = likedate;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Video getVideo() {
		return this.video;
	}

	public void setVideo(Video video) {
		this.video = video;
	}

}