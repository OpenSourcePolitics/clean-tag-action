# Clean tag action

Perform a simple string substitution on a tag name.

## Inputs
- `tag`: The tag name to clean.

## Outputs
- `tag`: The cleaned tag name.

## Example usage
```yaml
- name: Clean tag
  uses: OpenSourcePolitics/clean-tag-action@v1
  id: clean_tag
  with:
    tag: ${{ github.ref }}


# Use the cleaned tag name
- name: Build and push Docker image
  uses: OpenSourcePolitics/build-and-push-images-action@v1
  with:
    tag: ${{ steps.clean_tag.outputs.tag }}
```
