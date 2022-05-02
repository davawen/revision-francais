export interface Definition {
	nom: string,
	description: string,
	examples: string[]
}

export interface Genre {
	nom: string,
	description: string
}

export interface Mouvement {
	nom: string,
	siecle: number,
	siecle_romain: string,
	description: string
}
