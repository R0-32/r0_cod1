  # 11. 

# Get the untrained model
model = create_model()

# Train the model
# Note that this may take some time.
history = model.fit(train_generator,
                    epochs=15,
                    verbose=1,
                    validation_data=validation_generator)


# 8 скомпилируем модель через оптимайзер
from keras import optimizers
model.compile(loss='binary_crossentropy',
	optimizer=optimizers.RMSprop(lr=1e-4),
	metrics=['acc'])

# 10 запуск модели

history = model.fit_generator(train_generator,
                              steps_per_epoch=100,
                              epochs=30,
                              validation_data=validation_generator,
                              validation_steps=10)

model.save('cats_and_dogs_small_1.h5')
